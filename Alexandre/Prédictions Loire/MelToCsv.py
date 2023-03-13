"""
Ce script prend les données de fichier .mel et les transforme en X_tides.csv et Y_tides.csv,
X_tides étant les features d'entrée :
    - Hauteurs + Patm de Saint-Gilles et Nantes
Y_tides étant les features de sortie :
    - Hauteurs des ports

"""

import pandas as pd

# I took this function from github : https://gist.github.com/monocongo/6e0df19c9dd845f3f465a9a6ccfcef37
def transform_to_supervised(df,
                            previous_steps=1, 
                            forecast_steps=1,
                            dropnan=True):

    """
    Transforms a DataFrame containing time series data into a DataFrame
    containing data suitable for use as a supervised learning problem.
    
    Derived from code originally found at 
    https://machinelearningmastery.com/convert-time-series-supervised-learning-problem-python/
    
    :param df: pandas DataFrame object containing columns of time series values
    :param previous_steps: the number of previous steps that will be included in the
                           output DataFrame corresponding to each input column
    :param forecast_steps: the number of forecast steps that will be included in the
                           output DataFrame corresponding to each input column
    :return Pandas DataFrame containing original columns, renamed <orig_name>(t), as well as
            columns for previous steps, <orig_name>(t-1) ... <orig_name>(t-n) and columns 
            for forecast steps, <orig_name>(t+1) ... <orig_name>(t+n)
    """
    
    # original column names
    col_names = df.columns
    
    # list of columns and corresponding names we'll build from 
    # the originals found in the input DataFrame
    cols, names = list(), list()

    # input sequence (t-n, ... t-1)
    for i in range(previous_steps, 0, -1):
        cols.append(df.shift(i))
        names += [('%s (t-%d)' % (col_name, i)) for col_name in col_names]

    # forecast sequence (t, t+1, ... t+n)
    for i in range(0, forecast_steps):
        cols.append(df.shift(-i))
        if i == 0:
            names += [('%s (t)' % col_name) for col_name in col_names]
        else:
            names += [('%s (t+%d)' % (col_name, i)) for col_name in col_names]

    # put all the columns together into a single aggregated DataFrame
    agg = pd.concat(cols, axis=1)
    agg.columns = names

    # drop rows with NaN values
    if dropnan:
        agg.dropna(inplace=True)

    return agg



### MAIN PART

# Path of the data directory, blank if the script is in the same directory as the datas
data_path = "Datas/"

# Nom des colonnes
columns = ["Date", "Heure", "SG Hauteur", "SG Ectype", "SG Q", "SN Hauteur", "SN Ectype", "SN Q",
          "Montoir Hauteur", "Montoir Ectype", "Montoir Q", "Paimboeuf Hauteur", "Paimboeuf Ectype", "Paimboeuf Q",
          "Cordemais Hauteur", "Cordemais Ectype", "Cordemais Q", "LP Hauteur", "LP Ectype", "LP Q",
          "NUB Hauteur", "NUB Ectype", "NUB Q", "NSAL Hauteur", "NSAL Ectype", "NSAL Q", "SG Patm", "Nantes Patm"]

# Nombre de fichiers, ici on a 10 de données divisés en semestres
nb_years = 10

# Pourcentage d'observation voulu : Par soucis de taille en mémoire on ne peut pas utiliser toutes les données
percent = 1

# Number of previous steps and forward steps
previous_steps = 12
forward_steps = 1

df = pd.DataFrame([])

print("Début de la lecture des fichier CSV :")

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

print("Fin de la lecture des fichier CSV")
print("---------------------------------")

print(f"Datas : \n {df} \n")

# Traitement sur les données

df = df.drop_duplicates(subset = ['Date'], keep = 'last')
date = df.pop("Date")

# On récupère les données de qualitées 9 qui sont problématique
# On ne les cherches pas avec SG Q car sinon on obtient plus de la moitié des relevés qui sont de qualité 9
Q = df[["SN Q","Montoir Q", "Paimboeuf Q","Cordemais Q", "LP Q","NUB Q", "NSAL Q"]]

print(Q)
indexes = Q[Q.values == 9].index.tolist()
print(f"Nombre de données de qualitées 9 : {len(indexes)}")

df = df.drop(index=indexes)

# On ne récupère pas les bords haut et bas des données car ils vont être enlevés par le shift
X_tides = df[:int(df.shape[0]*percent)-forward_steps+1]
Y_tides = df[previous_steps:int(df.shape[0]*percent)]


# On enlève les features qui ne nous intéressent pas 
# X_tides = X_tides.drop(["SG Hauteur", "SG Ectype", "SG Q", "SN Ectype", "SN Q",
#           "Montoir Ectype", "Montoir Q", "Paimboeuf Ectype", "Paimboeuf Q",
#           "Cordemais Ectype", "Cordemais Q", "LP Ectype", "LP Q",
#           "NUB Ectype", "NUB Q", "NSAL Ectype", "NSAL Q", "SG Patm", "Nantes Patm"], axis = 1)

X_tides = X_tides["NSAL Hauteur"].to_frame()


# Y_tides = Y_tides.drop(["SG Hauteur", "SG Ectype", "SG Q", "SN Ectype", "SN Q",
#           "Montoir Ectype", "Montoir Q", "Paimboeuf Ectype", "Paimboeuf Q",
#           "Cordemais Ectype", "Cordemais Q", "LP Ectype", "LP Q",
#           "NUB Ectype", "NUB Q", "NSAL Ectype", "NSAL Q", "SG Patm", "Nantes Patm"], axis = 1)

Y_tides = Y_tides["NSAL Hauteur"].to_frame()


# On réordonne les colonnes
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

# Voir la taille des variables en RAM
import sys
def sizeof_fmt(num, suffix='B'):
    ''' by Fred Cirera,  https://stackoverflow.com/a/1094933/1870254, modified'''
    for unit in ['','Ki','Mi','Gi','Ti','Pi','Ei','Zi']:
        if abs(num) < 1024.0:
            return "%3.1f %s%s" % (num, unit, suffix)
        num /= 1024.0
    return "%.1f %s%s" % (num, 'Yi', suffix)

for name, size in sorted(((name, sys.getsizeof(value)) for name, value in locals().items()),
                         key= lambda x: -x[1])[:10]:
    print("{:>30}: {:>8}".format(name, sizeof_fmt(size)))

# On shift X pour avoir les 12 derniers relevés sur la même ligne
X_tides = transform_to_supervised(X_tides, previous_steps=previous_steps, forecast_steps=0)
X_tides["Date"] = date

X_tides = X_tides[X_cols]
print(f"X_tides : \n{X_tides}\n")

# On shift Y pour avoir les 3 prochains relevés sur la même ligne
Y_tides = transform_to_supervised(Y_tides, previous_steps=0, forecast_steps=forward_steps)
Y_tides["Date"] = date
Y_tides = Y_tides[Y_cols]
print(f"Y_tides : \n{Y_tides}\n")


print("Ecriture des fichiers en format CSV : Cela peut prendre quelques secondes jusqu'à quelques minutes !")

X_tides.to_csv(data_path + "X_tides.csv")
print("X_tides écrit au format .csv")
Y_tides.to_csv(data_path + "Y_tides.csv")
print("Y_tides écrit au format .csv")

n_sal = df[["SN Hauteur", "Montoir Hauteur", "Paimboeuf Hauteur", "Cordemais Hauteur", "LP Hauteur", "NUB Hauteur", "NSAL Hauteur"]]
n_sal.to_csv(data_path + "dock.csv")