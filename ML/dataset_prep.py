from tensorflow.keras.preprocessing.image import ImageDataGenerator

def data_generator(
    data_path='path',
    img_height=128,
    img_width=128,
    val_split=0.2,
    batch_size=64,
    ):
    train_datagen = ImageDataGenerator(validation_split=val_split)
    train_generator = train_datagen.flow_from_directory(
        train_data_dir,
        target_size=(img_height, img_width),
        batch_size=batch_size,
        class_mode='categorical',
        subset='training') # set as training data
    # Splitting images for validation set
    validation_generator = train_datagen.flow_from_directory(
        train_data_dir, # same directory as training data
        target_size=(img_height, img_width),
        batch_size=batch_size,
        class_mode='categorical',
        subset='validation') # set as validation data

    return train_generator, validation_generator