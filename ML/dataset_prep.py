from tensorflow.keras.preprocessing.image import ImageDataGenerator

def data_generator(
    data_path,
    img_height=128,
    img_width=128,
    val_split=0.2,
    batch_size=64,
    ):
    datagen = ImageDataGenerator(
        validation_split=val_split,
        rescale=1./255,
        rotation_range=40,
        width_shift_range=0.2,
        height_shift_range=0.2,
        shear_range=0.2,
        zoom_range=0.2,
        horizontal_flip=True,
        fill_mode='nearest',
        )

    train_generator = datagen.flow_from_directory(
        data_path,
        target_size=(img_height, img_width),
        batch_size=batch_size,
        class_mode='categorical',
        subset='training') # set as training data
    # Splitting images for validation set
    validation_generator = datagen.flow_from_directory(
        data_path, # same directory as training data
        target_size=(img_height, img_width),
        batch_size=batch_size,
        class_mode='categorical',
        subset='validation',
        shuffle = True) # set as validation data

    return train_generator, validation_generator