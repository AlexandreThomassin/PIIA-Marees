import pytorch_lightning as pl
from pytorch_lightning.callbacks import EarlyStopping, LearningRateMonitor, Callback

import torch
from torch import nn

from pytorch_forecasting import TimeSeriesDataSet, TemporalFusionTransformer, RecurrentNetwork
from pytorch_forecasting.metrics.quantile import QuantileLoss
import pytorch_forecasting.metrics

import pandas as pd

import matplotlib.pyplot as plt

# Load Data
data = pd.read_csv("1866_2022_1.csv")
#data = datas[datas["Source"] == 3]
n = len(data)
time_idx = [i for i in range(n)]
data.insert(3, "Time", time_idx, True)
data = data.drop("Date", axis = 1)

# define dataset
max_encoder_length = 100
max_prediction_length = 10

training_cutoff = data["Time"].max() - max_prediction_length
print(training_cutoff)
#print(data[lambda x: x.Time <= training_cutoff])
training = TimeSeriesDataSet(
    data[lambda x: x.Time <= training_cutoff],
    time_idx= "Time",
    target= "Valeur",
    group_ids=["Source"],
    max_encoder_length=max_encoder_length,
    max_prediction_length=max_prediction_length,
    static_reals=["Source"],
    time_varying_known_reals=["Time"],
    time_varying_unknown_reals=["Valeur"],
)
print(training)

# create validation and training dataset
validation = TimeSeriesDataSet.from_dataset(training, data, min_prediction_idx=training.index.time.max() + 1, stop_randomization=True)
batch_size = 128
train_dataloader = training.to_dataloader(train=True, batch_size=batch_size, num_workers=8)
val_dataloader = validation.to_dataloader(train=False, batch_size=batch_size, num_workers=8)
print(validation)

class PrintCallback(Callback):
    def on_train_start(self, trainer, pl_module):
        print("Training is starting !")
        print("======================")
    def on_train_end(self, trainer, pl_module):
        print("=================")
        print("Training is done.")

# define trainer with early stopping
early_stop_callback = EarlyStopping(monitor="val_loss", patience=2, verbose=2, mode="min")
lr_logger = LearningRateMonitor()
trainer = pl.Trainer(
    max_epochs=100,
    gradient_clip_val=0.1,
    limit_train_batches=50,
    callbacks=[lr_logger, early_stop_callback, PrintCallback()],
    accelerator = 'gpu',
    devices = 1,
    auto_lr_find = False,
)

# create the model
tft = TemporalFusionTransformer.from_dataset(
    training,
    learning_rate=0.03,
    hidden_size=8,
    attention_head_size=1,
    dropout=0.1,
    hidden_continuous_size=4,
    output_size=7,
    loss=QuantileLoss(),
    log_interval=1,
    reduce_on_plateau_patience=4
)
print(f"Number of parameters in network: {tft.size()/1e3:.1f}k")

# fit the model
trainer.fit(
    tft, train_dataloaders=train_dataloader, val_dataloaders=val_dataloader,
)

# load the best model according to the validation loss
# (given that we use early stopping, this is not necessarily the last epoch)
best_model_path = trainer.checkpoint_callback.best_model_path
best_tft = TemporalFusionTransformer.load_from_checkpoint(best_model_path)

# raw predictions are a dictionary from which all kind of information including quantiles can be extracted
raw_predictions, x = best_tft.predict(val_dataloader, mode="raw", return_x=True)

fig, ax = plt.subplots(3,1, figsize=(10,10))
for idx in range(0,30,10):  # plot 10 examples
    i=0
    ax1 = ax[idx//10]
    best_tft.plot_prediction(x, raw_predictions,ax=ax1, idx=idx+20, plot_attention=False);
    
plt.legend()
plt.show()