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