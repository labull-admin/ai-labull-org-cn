import 'dart:typed_data';
import 'dart:math';
import 'package:image_picker/image_picker.dart';

Future<XFile> uint8ListToXFile(Uint8List uint8list) async {
  final Random random = Random();
  final String fileName =
      'image_${DateTime.now().millisecondsSinceEpoch}_${random.nextInt(10000)}.png';
  return XFile.fromData(uint8list, name: fileName);
}
