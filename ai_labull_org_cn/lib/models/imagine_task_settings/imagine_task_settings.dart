import 'package:dart_mappable/dart_mappable.dart';

part 'imagine_task_settings.mapper.dart';

@MappableClass()
class ImagineTaskSettings with ImagineTaskSettingsMappable {
  static const List<String> processModes = [
    "relax",
    "mixed",
    "fast",
    "turbo",
  ];
  late String _aspectRatio;
  late String _processMode;
  late bool _notifyProgress;

  ImagineTaskSettings({
    String processMode = "fast",
    String aspectRatio = "1:1",
    bool notifyProgress = false,
  }) {
    _aspectRatio = aspectRatio;
    _processMode = processMode;
    _notifyProgress = notifyProgress;
    _validateSettings();
  }
  void _validateSettings() {
    if (!processModes.contains(_processMode)) {
      throw Exception("Invalid processMode, the available processModes are: "
          "${processModes.join(", ")}");
    }
    RegExp regExp = RegExp(r"^(0*[1-9]\d*):(0*[1-9]\d*)$");
    if (!regExp.hasMatch(_aspectRatio)) {
      throw Exception(
          "Invalid aspectRatio, Enter a valid number format (number:number) with each number being greater than 0.");
    }
  }

  set aspectRatio(String aspectRatio) {
    _validateSettings();
    _aspectRatio = aspectRatio;
  }

  set processMode(String processMode) {
    _validateSettings();
    _processMode = processMode;
  }

  set notifyProgress(bool notifyProgress) {
    _notifyProgress = notifyProgress;
  }

  String get aspectRatio => _aspectRatio;
  String get processMode => _processMode;
  bool get notifyProgress => _notifyProgress;
}
