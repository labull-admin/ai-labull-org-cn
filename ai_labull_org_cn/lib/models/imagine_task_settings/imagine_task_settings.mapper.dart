// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'imagine_task_settings.dart';

class ImagineTaskSettingsMapper extends ClassMapperBase<ImagineTaskSettings> {
  ImagineTaskSettingsMapper._();

  static ImagineTaskSettingsMapper? _instance;
  static ImagineTaskSettingsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImagineTaskSettingsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ImagineTaskSettings';

  static String _$processMode(ImagineTaskSettings v) => v.processMode;
  static const Field<ImagineTaskSettings, String> _f$processMode =
      Field('processMode', _$processMode, opt: true, def: "mixed");
  static String _$aspectRatio(ImagineTaskSettings v) => v.aspectRatio;
  static const Field<ImagineTaskSettings, String> _f$aspectRatio =
      Field('aspectRatio', _$aspectRatio, opt: true, def: "1:1");
  static bool _$notifyProgress(ImagineTaskSettings v) => v.notifyProgress;
  static const Field<ImagineTaskSettings, bool> _f$notifyProgress =
      Field('notifyProgress', _$notifyProgress, opt: true, def: false);

  @override
  final MappableFields<ImagineTaskSettings> fields = const {
    #processMode: _f$processMode,
    #aspectRatio: _f$aspectRatio,
    #notifyProgress: _f$notifyProgress,
  };

  static ImagineTaskSettings _instantiate(DecodingData data) {
    return ImagineTaskSettings(
        processMode: data.dec(_f$processMode),
        aspectRatio: data.dec(_f$aspectRatio),
        notifyProgress: data.dec(_f$notifyProgress));
  }

  @override
  final Function instantiate = _instantiate;

  static ImagineTaskSettings fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImagineTaskSettings>(map);
  }

  static ImagineTaskSettings fromJson(String json) {
    return ensureInitialized().decodeJson<ImagineTaskSettings>(json);
  }
}

mixin ImagineTaskSettingsMappable {
  String toJson() {
    return ImagineTaskSettingsMapper.ensureInitialized()
        .encodeJson<ImagineTaskSettings>(this as ImagineTaskSettings);
  }

  Map<String, dynamic> toMap() {
    return ImagineTaskSettingsMapper.ensureInitialized()
        .encodeMap<ImagineTaskSettings>(this as ImagineTaskSettings);
  }

  ImagineTaskSettingsCopyWith<ImagineTaskSettings, ImagineTaskSettings,
          ImagineTaskSettings>
      get copyWith => _ImagineTaskSettingsCopyWithImpl(
          this as ImagineTaskSettings, $identity, $identity);
  @override
  String toString() {
    return ImagineTaskSettingsMapper.ensureInitialized()
        .stringifyValue(this as ImagineTaskSettings);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ImagineTaskSettingsMapper.ensureInitialized()
                .isValueEqual(this as ImagineTaskSettings, other));
  }

  @override
  int get hashCode {
    return ImagineTaskSettingsMapper.ensureInitialized()
        .hashValue(this as ImagineTaskSettings);
  }
}

extension ImagineTaskSettingsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImagineTaskSettings, $Out> {
  ImagineTaskSettingsCopyWith<$R, ImagineTaskSettings, $Out>
      get $asImagineTaskSettings =>
          $base.as((v, t, t2) => _ImagineTaskSettingsCopyWithImpl(v, t, t2));
}

abstract class ImagineTaskSettingsCopyWith<$R, $In extends ImagineTaskSettings,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? processMode, String? aspectRatio, bool? notifyProgress});
  ImagineTaskSettingsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ImagineTaskSettingsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImagineTaskSettings, $Out>
    implements ImagineTaskSettingsCopyWith<$R, ImagineTaskSettings, $Out> {
  _ImagineTaskSettingsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImagineTaskSettings> $mapper =
      ImagineTaskSettingsMapper.ensureInitialized();
  @override
  $R call({String? processMode, String? aspectRatio, bool? notifyProgress}) =>
      $apply(FieldCopyWithData({
        if (processMode != null) #processMode: processMode,
        if (aspectRatio != null) #aspectRatio: aspectRatio,
        if (notifyProgress != null) #notifyProgress: notifyProgress
      }));
  @override
  ImagineTaskSettings $make(CopyWithData data) => ImagineTaskSettings(
      processMode: data.get(#processMode, or: $value.processMode),
      aspectRatio: data.get(#aspectRatio, or: $value.aspectRatio),
      notifyProgress: data.get(#notifyProgress, or: $value.notifyProgress));

  @override
  ImagineTaskSettingsCopyWith<$R2, ImagineTaskSettings, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ImagineTaskSettingsCopyWithImpl($value, $cast, t);
}
