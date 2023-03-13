    try:
        csv_file = open(cur_file, "a")
        with open(f"3_{i}.txt") as txt_file:
            lines = txt_file.readlines()
            for line in lines:
                if not line[0] == "#":
                    elt = line.split(";")
                    csv_file.write(f"{elt[0]},{elt[1]},{elt[2]}")

        csv_file.close()
    except FileNotFoundError:
        print("Fichier non trouvé")
