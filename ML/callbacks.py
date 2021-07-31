from keras.callbacks import ModelCheckpoint, EarlyStopping, CSVLogger
import os



def callback_func(
    model_save_path,
    log_csv_path,
    patience=4
    ):

    if not os.path.isdir(model_save_path):
        os.makedirs(model_save_path)
    checkpoint = ModelCheckpoint(
        model_save_path, 
        monitor='val_accuracy',
        mode='max',
        verbose=1,
        save_best_only=True,
    )

    early_stop = EarlyStopping(
        monitor='val_loss', 
        patience=patience, 
        verbose=1
    )

    log_csv = CSVLogger(
        log_csv_path,
        separator=',',
        append=False
    )

    callbacks_list = [checkpoint, early_stop,log_csv]

    return callbacks_list