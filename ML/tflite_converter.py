import tensorflow as tf

saved_model_dir = r'C:\Users\Ankan\Desktop\Github\ML-with-Flutter\ML\best_model'
converter = tf.lite.TFLiteConverter.from_saved_model(saved_model_dir)
converter.optimizations = [tf.lite.Optimize.DEFAULT]
converter.target_spec.supported_types = [tf.float32]
tflite_model = converter.convert()

with open('converted_model_tflite', 'wb') as f:
    f.write(tflite_model)