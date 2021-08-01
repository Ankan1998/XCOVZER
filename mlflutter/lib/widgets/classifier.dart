import 'dart:collection';
import 'dart:io';

import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';

class Classifier {
  Classifier();

  classifyImage(File image) async {
    var inputImage = image;

    ImageProcessor imageProcessor = ImageProcessorBuilder()
        .add(ResizeOp(128, 128, ResizeMethod.BILINEAR))
        .add(NormalizeOp(0, 255))
        .build();

    TensorImage tensorImage = TensorImage.fromFile(inputImage);
    tensorImage = imageProcessor.process(tensorImage);

    TensorBuffer probBuffer =
        TensorBuffer.createFixedSize(<int>[1, 4], TfLiteType.float32);
    try {
      Interpreter interpreter =
          await Interpreter.fromAsset('converted_model_tflite.tflite');
      print("loaded succesfully");
      interpreter.run(tensorImage.buffer, probBuffer.buffer);
    } catch (e) {
      print("Error loading or running model");
    }

    List<String> labels = await FileUtil.loadLabels('assets/labels.txt');
    TensorProcessor probProcessor = TensorProcessorBuilder().build();
    TensorLabel tensorLabel =
        TensorLabel.fromList(labels, probProcessor.process(probBuffer));

    Map labeledProb = tensorLabel.getMapWithFloatValue();
    final sorted = SplayTreeMap.from(labeledProb,
        (key1, key2) => labeledProb[key2].compareTo(labeledProb[key1]));
    print(sorted);
    return sorted;

  }
}
