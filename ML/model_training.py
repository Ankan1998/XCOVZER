from model import model_fn
from callbacks import callback_func
from dataset_prep import data_generator

DATA_PATH=''
train_generator, val_generator = data_generator(data_path)
model = model_fn()

MODEL_PATH = 'saved_model/best_model'
CSV_PATH = 'log.csv'
PATIENCE = 4
callbacks_list = callback_func(MODEL_PATH, CSV_PATH, PATIENCE)

def training(train_generator, val_generator, epochs=20,callback_list=callbacks_list):

    model.fit_generator(
        train_generator,
        validation_data=val_generator,
        epochs=30,
        verbose=2,
        callbacks=callbacks_list
        )