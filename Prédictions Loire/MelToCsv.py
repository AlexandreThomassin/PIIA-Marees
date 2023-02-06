"""
Ce script prend les données de fichier .mel et les transforme en X_tides.csv et Y_tides.csv,
X_tides étant les features d'entrée :
    - Hauteurs + Ecart Type de tous les port, Patm de Saint-Gilles et Nantes
Y_tides étant les features de sortie :
    - Hauteurs des ports

"""

import pandas as pd

# Path of the data directory, blank if the script is in the same directory as the datas
data_path = "Datas/"

# Nom des colonnes
columns = ["Date", "Heure", "SG Hauteur", "SG Ectype", "SG Q", "SN Hauteur", "SN Ectype", "SN Q",
          "Montoir Hauteur", "Montoir Ectype", "Montoir Q", "Paimboeuf Hauteur", "Paimboeuf Ectype", "Paimboeuf Q",
          "Cordemais Hauteur", "Cordemais Ectype", "Cordemais Q", "LP Hauteur", "LP Ectype", "LP Q",
          "NUB Hauteur", "NUB Ectype", "NUB Q", "NSAL Hauteur", "NSAL Ectype", "NSAL Q", "SG Patm", "Nantes Patm"]

# Nombre de fichiers, ici on a 10 de données divisés en semestres
nb_years = 10

df = pd.DataFrame([])

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

                df = pd.concat((df, df_temp))


        except FileNotFoundError:
            print(f"Fichier loire{2012 + nb_file}_Semestre{sem}.mel non trouvé")

print(f"Datas : \n {df} \n")

# Traitement sur les données

df = df.drop_duplicates(subset = ['Date'], keep = 'last')

X_tides = df[:]
Y_tides = df[:]

# X_tides = X_tides.drop([
#         "SG Q", "SN Q",
#         "Montoir Q", "Paimboeuf Q",
#         "Cordemais Q", "LP Q",
#         "NUB Q", "NSAL Q"], axis = 1)

Y_tides = Y_tides.drop(["SG Hauteur", "SG Ectype", "SG Q", "SN Ectype", "SN Q",
          "Montoir Ectype", "Montoir Q", "Paimboeuf Ectype", "Paimboeuf Q",
          "Cordemais Ectype", "Cordemais Q", "LP Ectype", "LP Q",
          "NUB Ectype", "NUB Q", "NSAL Ectype", "NSAL Q", "SG Patm", "Nantes Patm"], axis = 1)

print(f"X_tides : \n{X_tides}\n")
print(f"Y_tides : \n{Y_tides}\n")

X_tides.to_csv(data_path + "X_tides.csv")
Y_tides.to_csv(data_path + "Y_tides.csv")