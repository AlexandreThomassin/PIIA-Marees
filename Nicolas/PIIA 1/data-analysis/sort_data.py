import os
import sys
import csv
import pandas as pd
#import snappy
#import fastparquet

os.chdir('data/maregraphie')
# current = os.getcwd()

files_names = os.listdir()
# files_names.pop(0)  # delete 3.sml
name_pop = files_names.pop(0)
while name_pop != '3_2019.txt':
    name_pop = files_names.pop(0)


# # Data visualisation
# for name in files_names:
#     with open(name, 'r') as text_file:
#         for line in text_file.readlines():
#             if line[0] != "#":
#                 line_strip = line.strip("\n")
#                 if line_strip[-1] == "4":
#                     lista = line_strip.split(";")
#                     print(lista[0])
#                     break



with open("maregraphie_csv_4_2020_2021.csv", 'w', newline='') as csv_file:
    wr = csv.writer(csv_file)
    #wr.writerow(["Date", "num_of_date", "Valeur", "Source"])
    wr.writerow(["Date", "Valeur", "Source"])
    #i = 1
    for name in files_names:
        if name == '3_2022.txt':
             break
        with open(name, 'r') as text_file:
            for line in text_file.readlines():
                if line[0] != "#":
                    line_strip = line.strip("\n")
                    if line_strip[-1] == "4":
                        tmp_list = line_strip.split(";")
                        #wr.writerow([tmp_list[0]] + [i] + tmp_list[1:])
                        #i += 1
                        wr.writerow(tmp_list)
        print(name, "ready.")


"""
with open("maregraphie_csv.csv", 'w', newline='') as csv_file:
    wr = csv.writer(csv_file)
    wr.writerow(["Date", "Valeur", "Source"])
    for name in files_names:
        with open(name, 'r') as text_file:
            for line in text_file.readlines():
                if line[0] != "#":
                    lista_strip = line.strip("\n")
                    if lista_strip[-1] == "4":
                        lista = lista_strip.split(";")
                        print(lista[0])
                        break
"""
