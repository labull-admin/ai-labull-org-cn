// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'image_variation_settings.dart';

class ImageVariationSettingsMapper
    extends ClassMapperBase<ImageVariationSettings> {
  ImageVariationSettingsMapper._();

  static ImageVariationSettingsMapper? _instance;
  static ImageVariationSettingsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImageVariationSettingsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ImageVariationSettings';

  static String _$size(ImageVariationSettings v) => v.size;
  static const Field<ImageVariationSettings, String> _f$size =
      Field('size', _$size, opt: true, def: "1024x1024");
  static int _$n(ImageVariationSettings v) => v.n;
  static const Field<ImageVariationSettings, int> _f$n =
      Field('n', _$n, opt: true, def: 1);

  @override
  final Map<Symbol, Field<ImageVariationSettings, dynamic>> fields = const {
    #size: _f$size,
    #n: _f$n,
  };

  static ImageVariationSettings _instantiate(DecodingData data) {
    return ImageVariationSettings(size: data.dec(_f$size), n: data.dec(_f$n));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageVariationSettings fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImageVariationSettings>(map);
  }

  static ImageVariationSettings fromJson(String json) {
    return ensureInitialized().decodeJson<ImageVariationSettings>(json);
  }
}

mixin ImageVariationSettingsMappable {
  String toJson() {
    return ImageVariationSettingsMapper.ensureInitialized()
        .encodeJson<ImageVariationSettings>(this as ImageVariationSettings);
  }

  Map<String, dynamic> toMap() {
    return ImageVariationSettingsMapper.ensureInitialized()
        .encodeMap<ImageVariationSettings>(this as ImageVariationSettings);
  }

  ImageVariationSettingsCopyWith<ImageVariationSettings, ImageVariationSettings,
          ImageVariationSettings>
      get copyWith => _ImageVariationSettingsCopyWithImpl(
          this as ImageVariationSettings, $identity, $identity);
  @override
  String toString() {
    return ImageVariationSettingsMapper.ensureInitialized()
        .stringifyValue(this as ImageVariationSettings);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ImageVariationSettingsMapper.ensureInitialized()
                .isValueEqual(this as ImageVariationSettings, other));
  }

  @override
  int get hashCode {
    return ImageVariationSettingsMapper.ensureInitialized()
        .hashValue(this as ImageVariationSettings);
  }
}

extension ImageVariationSettingsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageVariationSettings, $Out> {
  ImageVariationSettingsCopyWith<$R, ImageVariationSettings, $Out>
      get $asImageVariationSettings =>
          $base.as((v, t, t2) => _ImageVariationSettingsCopyWithImpl(v, t, t2));
}

abstract class ImageVariationSettingsCopyWith<
    $R,
    $In extends ImageVariationSettings,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? size, int? n});
  ImageVariationSettingsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ImageVariationSettingsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageVariationSettings, $Out>
    implements
        ImageVariationSettingsCopyWith<$R, ImageVariationSettings, $Out> {
  _ImageVariationSettingsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageVariationSettings> $mapper =
      ImageVariationSettingsMapper.ensureInitialized();
  @override
  $R call({String? size, int? n}) => $apply(
      FieldCopyWithData({if (size != null) #size: size, if (n != null) #n: n}));
  @override
  ImageVariationSettings $make(CopyWithData data) => ImageVariationSettings(
      size: data.get(#size, or: $value.size), n: data.get(#n, or: $value.n));

  @override
  ImageVariationSettingsCopyWith<$R2, ImageVariationSettings, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ImageVariationSettingsCopyWithImpl($value, $cast, t);
}
