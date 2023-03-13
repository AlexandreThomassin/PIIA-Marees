import tensorflow as tf
import pandas as pd
import numpy as np
from datetime import datetime
from matplotlib import pyplot as plt

def tides_prediction(date, inter = 0):
    """
    Parameters :
    ------------
    date : str, YYYY-MM-DDTHH:MM format
    inter : interval of values with asked date as the center

    Results :
    ------------
    return asked values : [date - inter, date + inter]

    """
    # Load model
    path = "MultiLSTM"

    model = tf.keras.models.load_model(path, compile = False)
    print(model.summary())

    model.compile(loss="mean_squared_error",
                    optimizer="adam",
                    metrics=["mean_squared_error"])


    # Load datas
    df_last = pd.read_csv("last_96.csv")
    df_last.pop("Source")
    last = df_last[:]

    date_time = pd.to_datetime(last.pop('Date'), format='%d/%m/%Y %H:%M:%S').values
    last = last.values

    # Preload preds with last datas, in case interval take real values
    preds = []
    for i in range(len(last)):
        preds.append([date_time[i] - np.timedelta64(0, "h"), last[i][0]])

    # Reshape last datas to be used in the model
    last = last.reshape([1,96,1])

    # Get date and number of prediction requiered
    date_ask = np.datetime64(date)
    last_date = date_time[-1]
    nb_hour = (date_ask - last_date) / np.timedelta64(1, "h")
    nb_preds = nb_hour // 12 + (nb_hour%12 != 0) + (inter//12)

    # Make predictions
    for _ in range(int(nb_preds)):
        pred = model.predict(last)
        for e in pred[0]:
            last_date += np.timedelta64(1, "h")
            preds.append([last_date, e[0]])

        last = last.reshape([96])
        pred = pred.reshape([12])
        last = np.concatenate((last[12:], pred))

        last = last.reshape([1,96,1])


    df = pd.DataFrame(preds, columns=["Date", "Valeur"])

    # Get index of asked date
    index = df.index[df['Date'] == date_ask].values[0]

    # Return asked values inside asked interval
    res = df[max(0, index-inter): index + inter + 1]

    return res

df = tides_prediction("2022-07-01T00:00", inter = 10)
print(f"Prédiction(s) demandée(s) :\n {df}")

df_last = pd.read_csv("last_96.csv")
date_last = pd.to_datetime(df_last.pop('Date'), format='%d/%m/%Y %H:%M:%S').values

date = np.concatenate((date_last, df["Date"].values))
values = np.unique(np.concatenate((df_last["Valeur"], df["Valeur"])))

print(date)

plt.plot(date, values)

print("t")

# plt.savefig("matplotlib.png")  #savefig, don't show
