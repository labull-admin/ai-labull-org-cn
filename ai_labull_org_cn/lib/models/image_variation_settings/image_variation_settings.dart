import 'package:dart_mappable/dart_mappable.dart';

part 'image_variation_settings.mapper.dart';

@MappableClass()
class ImageVariationSettings with ImageVariationSettingsMappable {
  static const List<String> allowedSizes = ["1024x1024", "512x512", "256x256"];
  static List<int> allowedNs = List.generate(5, (index) => index + 1);

  late String _size;
  late int _n;

  ImageVariationSettings({
    String size = "1024x1024",
    int n = 1,
  }) {
    _validateSettings(size, n);
    _size = size;
    _n = n;
  }
  void _validateSettings(String size, int n) {
    if (!allowedSizes.contains(size)) {
      throw Exception("Invalid size, the available sizes are: "
          "${allowedSizes.join(", ")}");
    }
    if (!allowedNs.contains(n)) {
      throw Exception(
          "n must be in range [1, ${allowedNs.length}], n必须在[1, ${allowedNs.length}]范围内");
    }
  }

  set size(String size) {
    _validateSettings(size, _n);
    _size = size;
  }

  set n(int n) {
    _validateSettings(_size, n);
    _n = n;
  }

  String get size => _size;
  int get n => _n;
}
