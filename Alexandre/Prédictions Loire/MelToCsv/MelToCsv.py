"""
Ce script prend les données de fichier .mel et les transforme en X_tides.csv et Y_tides.csv,
X_tides étant les features d'entrée :
    - Hauteurs + Patm de Saint-Gilles et Nantes
Y_tides étant les features de sortie :
    - Hauteurs des ports

"""
import pandas as pd
from transform_to_supervised import transform_to_supervised


### MAIN PART

# Path of the data directory, blank if the script is in the same directory as the datas
data_path = "../Datas/"

# Choose supervised mode : if set to True it will create two csv files, X_tides with the past time features and Y_tides with the labels
supervised = True

# Choose if you want to include flow rate in the final dataset, if supervised set to True it will include the flow rate in the features
flow_rate = True

# Choose if you want to include flow rate in labels
label_flow_rate = True

# Columns names
columns = ["Date", "Heure", "SG Hauteur", "SG Ectype", "SG Q", "SN Hauteur", "SN Ectype", "SN Q",
          "Montoir Hauteur", "Montoir Ectype", "Montoir Q", "Paimboeuf Hauteur", "Paimboeuf Ectype", "Paimboeuf Q",
          "Cordemais Hauteur", "Cordemais Ectype", "Cordemais Q", "LP Hauteur", "LP Ectype", "LP Q",
          "NUB Hauteur", "NUB Ectype", "NUB Q", "NSAL Hauteur", "NSAL Ectype", "NSAL Q", "SG Patm", "Nantes Patm"]

# Columns wanted in the csv file if supervised = False, features columns if set to True, you can choose from the columns list,
# if you want to include flow rate, set flow_rate to True
wanted_columns = ["SN Hauteur", "Montoir Hauteur", "Paimboeuf Hauteur", "Cordemais Hauteur", "LP Hauteur", "NUB Hauteur", "NSAL Hauteur", "SG Patm", "Nantes Patm"]

# Labels columns, used only if supervised = True
label_columns = ["NSAL Hauteur"]

# Number of years, here we have 10 years
nb_years = 10

# Percent of all datas wanted at the end
percent = 1

# Number of previous steps and forward steps
previous_steps = 12
forward_steps = 2

# Reading files

df = pd.DataFrame([])

print("Début de la lecture des fichier MEL :")

for nb_file in range(nb_years+1):
    for sem in range(1,3):
        print(f"Fichier en traitement : loire{2012 + nb_file}_Semestre{sem}_MareeObservees_HPP.mel")
        try :
            # Manage the first file
            if df.empty:
                df = pd.read_csv(data_path + f"loire{2012 + nb_file}_Semestre{sem}_MareeObservees_HPP.mel", delim_whitespace = True, names = columns, index_col = False)
                df['Date'] = df['Date'] + " " + df.pop('Heure')
                df['Date'] = pd.to_datetime(df['Date'], format='%d/%m/%Y %H:%M:%S')
                # print(df)

            else:
                df_temp = pd.read_csv(data_path + f"loire{2012 + nb_file}_Semestre{sem}_MareeObservees_HPP.mel", delim_whitespace = True, names = columns, index_col = False)
                df_temp['Date'] = df_temp['Date'] + " " + df_temp.pop('Heure')
                df_temp['Date'] = pd.to_datetime(df_temp['Date'], format='%d/%m/%Y %H:%M:%S')
                # print(df_temp)

                df = pd.concat((df, df_temp), ignore_index=True)

        except FileNotFoundError:
            print(f"Fichier loire{2012 + nb_file}_Semestre{sem}.mel non trouvé")

print("Fin de la lecture des fichier MEL")
print("---------------------------------")

print(f"Datas : \n {df} \n")

# Traitement sur les données

# Get hour data : 1 every 12 lines
# It will be used if flow_rate or label_flow_rate is set to True
hour_indexes = list(range(0,df.shape[0],12))
df_hour = df.take(hour_indexes)


# We get the indexes of quality 9 datas
# We don't search for them if the SG docks because half of its datas are of quality 9
Q = df[["SN Q","Montoir Q", "Paimboeuf Q","Cordemais Q", "LP Q","NUB Q", "NSAL Q"]]

indexes = Q[Q.values == 9].index.tolist()
print(f"Number of quality 9 datas : {len(indexes)}")

df = df.drop(index=indexes)

# We get the date
df = df.drop_duplicates(subset = ['Date'], keep = 'last')
date = df.pop("Date")

if supervised:
    print("Supervised mode")
    # On ne récupère pas les bords haut et bas des données car ils vont être enlevés par le shift
    X_tides = df[:int(df.shape[0]*percent)-forward_steps+1]
    Y_tides = df[previous_steps:int(df.shape[0]*percent)]

    # On ne garde que les features qui nous intéressent 
    X_tides = X_tides[wanted_columns]

    if flow_rate:
        X_tides.insert(0, "Date", date)

        debit = pd.read_csv(data_path + "debit.csv", delimiter=";")
        debit = debit.drop(["null"], axis=1)

        debit['Date'] = pd.to_datetime(debit['Date'], format='%d/%m/%Y %H:%M:%S')
        debit_date = debit['Date']

        X_tides = X_tides[X_tides['Date'].isin(debit_date)]

        dataset_date = X_tides["Date"].to_list()

        debit = debit[debit["Date"].isin(dataset_date)]

        X_tides["Debit Montjean"] = debit["Debit Montjean"].to_list()

        X_tides.pop('Date')

    Y_tides = Y_tides[label_columns]


    if label_flow_rate:
        Y_tides.insert(0, "Date", date)

        debit = pd.read_csv(data_path + "debit.csv", delimiter=";")
        debit = debit.drop(["null"], axis=1)

        debit['Date'] = pd.to_datetime(debit['Date'], format='%d/%m/%Y %H:%M:%S')
        debit_date = debit['Date']

        Y_tides = Y_tides[Y_tides['Date'].isin(debit_date)]

        dataset_date = Y_tides["Date"].to_list()

        debit = debit[debit["Date"].isin(dataset_date)]

        Y_tides["Debit Montjean"] = debit["Debit Montjean"].to_list()

        Y_tides.pop('Date')


    # We order the columns of the datasets
    X_cols = []
    cols = X_tides.columns.tolist()
    for name in cols:
        X_cols += [name + f" (t{i})" for i in range(-previous_steps, 0)]
    X_cols = ["Date"] + X_cols

    Y_cols = []
    cols = Y_tides.columns.tolist()
    for name in cols:
        Y_cols += [name + " (t)"] + [name + f" (t+{i})" for i in range(1,forward_steps)]
    Y_cols = ["Date"] + Y_cols

    print("Tranforming")

    # We tranform X_tides to get the previous steps on the same line
    X_tides = transform_to_supervised(X_tides, previous_steps=previous_steps, forecast_steps=0)
    X_tides["Date"] = date

    X_tides = X_tides[X_cols]
    print(f"X_tides : \n{X_tides}\n")

    # We tranform Y_tides to get the next steps on the same line
    Y_tides = transform_to_supervised(Y_tides, previous_steps=0, forecast_steps=forward_steps)
    Y_tides["Date"] = date
    Y_tides = Y_tides[Y_cols]
    print(f"Y_tides : \n{Y_tides}\n")


    print("Ecriture des fichiers en format CSV : Cela peut prendre quelques secondes !")

    X_tides.to_csv(data_path + "X_tides.csv")
    print("X_tides écrit au format .csv")
    Y_tides.to_csv(data_path + "Y_tides.csv")
    print("Y_tides écrit au format .csv")

else:

    dataset = df[wanted_columns]

    if flow_rate:

        dataset.insert(0, "Date", date)

        debit = pd.read_csv(data_path + "debit.csv", delimiter=";")
        debit = debit.drop(["null"], axis=1)

        debit['Date'] = pd.to_datetime(debit['Date'], format='%d/%m/%Y %H:%M:%S')
        debit_date = debit['Date']

        dataset = dataset[dataset['Date'].isin(debit_date)]

        dataset_date = dataset["Date"].to_list()

        debit = debit[debit["Date"].isin(dataset_date)]

        dataset["Debit Montjean"] = debit["Debit Montjean"].to_list()

        date = dataset.pop('Date')

    print("Ecriture du dataset au format .csv")
    dataset.to_csv(data_path + "dataset.csv")
    print("dataset écrit au format .csv")
