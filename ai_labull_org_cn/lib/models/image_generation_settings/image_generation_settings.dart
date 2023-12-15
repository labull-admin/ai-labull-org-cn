import 'package:dart_mappable/dart_mappable.dart';

part 'image_generation_settings.mapper.dart';

@MappableClass()
class ImageGenerationSettings with ImageGenerationSettingsMappable {
  static const List<String> allowedModels = [
    "dall-e-3",
    "dall-e-2",
  ];
  static const List<String> allowedSizes = [
    "1024x1024",
    "1024x1792",
    "1792x1024"
  ];
  static const List<String> allowedQualities = [
    "standard",
    "hd",
  ];
  static List<int> allowedNs = List.generate(5, (index) => index + 1);

  late bool _ifRevisePrompt;
  late String _model;
  late String _size;
  late String _quality;
  late int _n;

  ImageGenerationSettings({
    bool ifRevisePrompt = true,
    String model = "dall-e-3",
    String size = "1024x1024",
    String quality = "standard",
    int n = 1,
  }) {
    _validateSettings(model, size, quality, n);
    _ifRevisePrompt = ifRevisePrompt;
    _model = model;
    _size = size;
    _quality = quality;
    _n = n;
  }
  void _validateSettings(String model, String size, String quality, int n) {
    if (!allowedModels.contains(model)) {
      throw Exception("Invalid model, the available models are: "
          "${allowedModels.join(", ")}");
    }
    if (!allowedSizes.contains(size)) {
      throw Exception("Invalid size, the available sizes are: "
          "${allowedSizes.join(", ")}");
    }
    if (!allowedQualities.contains(quality)) {
      throw Exception(
          "Invalid quality, the available qualities are: ${allowedQualities.join(", ")}");
    }
    if (model == "dall-e-3" && n != 1) {
      throw Exception("dall-e-3 only supports n=1, dall-e-3模型最多只支持生成1张图");
    }
    if (model == "dall-e-2" && size != "1024x1024") {
      throw Exception(
          "dall-e-2 only supports size=1024x1024, dalle-2模型最多只支持生成1024x1024的图");
    }
    if (model == "dall-e-2" && quality != "standard") {
      throw Exception(
          "dall-e-2 only supports quality=standard , dalle-2模型最多只支持生成标准质量(standard)的图");
    }
    if (n < 1) {
      throw Exception("n must be greater than 0");
    }
  }

  set model(String model) {
    _validateSettings(model, _size, _quality, _n);
    _model = model;
  }

  set size(String size) {
    _validateSettings(_model, size, _quality, _n);
    _size = size;
  }

  set quality(String quality) {
    _validateSettings(_model, _size, quality, _n);
    _quality = quality;
  }

  set n(int n) {
    _validateSettings(_model, _size, _quality, n);
    _n = n;
  }
  set ifRevisePrompt(bool ifRevisePrompt) {
    _ifRevisePrompt = ifRevisePrompt;
  }

  bool get ifRevisePrompt => _ifRevisePrompt;
  String get model => _model;
  String get size => _size;
  String get quality => _quality;
  int get n => _n;
}
