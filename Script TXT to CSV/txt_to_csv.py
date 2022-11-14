""" Il faut éxécuter le script dans le dossier contenant les fichier .txt"""

# Intervalle de regroupement en années
years_inter = 10

# Année du premier fichier
start_year = 1866

# Année du dernier fichier
end_year = 2022

# Variables pour savoir si il faut créer un nouveau fichier
cur_file = f"{start_year}_{min(end_year, start_year+years_inter-1)}.csv"
cur_year = 0

# On écrit les labels des valeurs dans le premier fichier
csv_file = open(cur_file, "w")
csv_file.write("Date,Valeur,Source")
csv_file.close()

for i in range(start_year, end_year+1):
    if cur_year == years_inter:
        cur_file = f"{i}_{min(i+9, end_year)}.csv"
        cur_year = 0

        # On écrit les labels des valeurs
        csv_file = open(cur_file, "w")
        csv_file.write("Date,Valeur,Source")
        csv_file.close()

    try:
        csv_file = open(cur_file, "a")
        csv_file.write("\n") # Saute une ligne suite a l'ouverture en mode 'append'

        with open(f"3_{i}.txt") as txt_file:
            lines = txt_file.readlines()
            for line in lines:
                if not line[0] == "#":
                    elt = line.split(";")
                    csv_file.write(f"{elt[0]},{elt[1]},{elt[2]}")

        csv_file.close()

    except FileNotFoundError:
        print(f"Fichier {i}.txt non trouvé")

    # print(cur_year)
    cur_year += 1
