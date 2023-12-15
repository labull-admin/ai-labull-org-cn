// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'image_generation_settings.dart';

class ImageGenerationSettingsMapper
    extends ClassMapperBase<ImageGenerationSettings> {
  ImageGenerationSettingsMapper._();

  static ImageGenerationSettingsMapper? _instance;
  static ImageGenerationSettingsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ImageGenerationSettingsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ImageGenerationSettings';

  static bool _$ifRevisePrompt(ImageGenerationSettings v) => v.ifRevisePrompt;
  static const Field<ImageGenerationSettings, bool> _f$ifRevisePrompt =
      Field('ifRevisePrompt', _$ifRevisePrompt, opt: true, def: true);
  static String _$model(ImageGenerationSettings v) => v.model;
  static const Field<ImageGenerationSettings, String> _f$model =
      Field('model', _$model, opt: true, def: "dall-e-3");
  static String _$size(ImageGenerationSettings v) => v.size;
  static const Field<ImageGenerationSettings, String> _f$size =
      Field('size', _$size, opt: true, def: "1024x1024");
  static String _$quality(ImageGenerationSettings v) => v.quality;
  static const Field<ImageGenerationSettings, String> _f$quality =
      Field('quality', _$quality, opt: true, def: "standard");
  static int _$n(ImageGenerationSettings v) => v.n;
  static const Field<ImageGenerationSettings, int> _f$n =
      Field('n', _$n, opt: true, def: 1);

  @override
  final Map<Symbol, Field<ImageGenerationSettings, dynamic>> fields = const {
    #ifRevisePrompt: _f$ifRevisePrompt,
    #model: _f$model,
    #size: _f$size,
    #quality: _f$quality,
    #n: _f$n,
  };

  static ImageGenerationSettings _instantiate(DecodingData data) {
    return ImageGenerationSettings(
        ifRevisePrompt: data.dec(_f$ifRevisePrompt),
        model: data.dec(_f$model),
        size: data.dec(_f$size),
        quality: data.dec(_f$quality),
        n: data.dec(_f$n));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageGenerationSettings fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImageGenerationSettings>(map);
  }

  static ImageGenerationSettings fromJson(String json) {
    return ensureInitialized().decodeJson<ImageGenerationSettings>(json);
  }
}

mixin ImageGenerationSettingsMappable {
  String toJson() {
    return ImageGenerationSettingsMapper.ensureInitialized()
        .encodeJson<ImageGenerationSettings>(this as ImageGenerationSettings);
  }

  Map<String, dynamic> toMap() {
    return ImageGenerationSettingsMapper.ensureInitialized()
        .encodeMap<ImageGenerationSettings>(this as ImageGenerationSettings);
  }

  ImageGenerationSettingsCopyWith<ImageGenerationSettings,
          ImageGenerationSettings, ImageGenerationSettings>
      get copyWith => _ImageGenerationSettingsCopyWithImpl(
          this as ImageGenerationSettings, $identity, $identity);
  @override
  String toString() {
    return ImageGenerationSettingsMapper.ensureInitialized()
        .stringifyValue(this as ImageGenerationSettings);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ImageGenerationSettingsMapper.ensureInitialized()
                .isValueEqual(this as ImageGenerationSettings, other));
  }

  @override
  int get hashCode {
    return ImageGenerationSettingsMapper.ensureInitialized()
        .hashValue(this as ImageGenerationSettings);
  }
}

extension ImageGenerationSettingsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageGenerationSettings, $Out> {
  ImageGenerationSettingsCopyWith<$R, ImageGenerationSettings, $Out>
      get $asImageGenerationSettings => $base
          .as((v, t, t2) => _ImageGenerationSettingsCopyWithImpl(v, t, t2));
}

abstract class ImageGenerationSettingsCopyWith<
    $R,
    $In extends ImageGenerationSettings,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {bool? ifRevisePrompt,
      String? model,
      String? size,
      String? quality,
      int? n});
  ImageGenerationSettingsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ImageGenerationSettingsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageGenerationSettings, $Out>
    implements
        ImageGenerationSettingsCopyWith<$R, ImageGenerationSettings, $Out> {
  _ImageGenerationSettingsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageGenerationSettings> $mapper =
      ImageGenerationSettingsMapper.ensureInitialized();
  @override
  $R call(
          {bool? ifRevisePrompt,
          String? model,
          String? size,
          String? quality,
          int? n}) =>
      $apply(FieldCopyWithData({
        if (ifRevisePrompt != null) #ifRevisePrompt: ifRevisePrompt,
        if (model != null) #model: model,
        if (size != null) #size: size,
        if (quality != null) #quality: quality,
        if (n != null) #n: n
      }));
  @override
  ImageGenerationSettings $make(CopyWithData data) => ImageGenerationSettings(
      ifRevisePrompt: data.get(#ifRevisePrompt, or: $value.ifRevisePrompt),
      model: data.get(#model, or: $value.model),
      size: data.get(#size, or: $value.size),
      quality: data.get(#quality, or: $value.quality),
      n: data.get(#n, or: $value.n));

  @override
  ImageGenerationSettingsCopyWith<$R2, ImageGenerationSettings, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ImageGenerationSettingsCopyWithImpl($value, $cast, t);
}
