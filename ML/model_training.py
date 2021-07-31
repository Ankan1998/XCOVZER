from model import model_fn
model = model_fn()
from callbacks import callback_func

def training(train_gen, val_gen, epochs=20,callback_list=callbacks_list):

    model.fit_generator(
        train_generator,
        validation_data=validation_generator,
        epochs=30,
        verbose=2,
        callbacks=callbacks_list
        )