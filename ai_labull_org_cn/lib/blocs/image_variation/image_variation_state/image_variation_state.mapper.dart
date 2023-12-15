// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'image_variation_state.dart';

class ImageVariationStateMapper extends ClassMapperBase<ImageVariationState> {
  ImageVariationStateMapper._();

  static ImageVariationStateMapper? _instance;
  static ImageVariationStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImageVariationStateMapper._());
      ImageVariationStateInitialMapper.ensureInitialized();
      ImageVariationStateVariateImageInitialMapper.ensureInitialized();
      ImageVariationStateVariateImageProgressMapper.ensureInitialized();
      ImageVariationStateVariateImageSuccessMapper.ensureInitialized();
      ImageVariationStateVariateImageFailureMapper.ensureInitialized();
      ImageVariationStateSettingsChangedProgressMapper.ensureInitialized();
      ImageVariationStateSettingsChangedSuccessMapper.ensureInitialized();
      ImageVariationStateSettingsChangedFailureMapper.ensureInitialized();
      ImageVariationSettingsMapper.ensureInitialized();
      ImageVariationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImageVariationState';

  static String _$stateType(ImageVariationState v) => v.stateType;
  static const Field<ImageVariationState, String> _f$stateType =
      Field('stateType', _$stateType);
  static ImageVariationSettings _$imageVariationSettings(
          ImageVariationState v) =>
      v.imageVariationSettings;
  static const Field<ImageVariationState, ImageVariationSettings>
      _f$imageVariationSettings =
      Field('imageVariationSettings', _$imageVariationSettings);
  static List<ImageVariation> _$imageVariations(ImageVariationState v) =>
      v.imageVariations;
  static const Field<ImageVariationState, List<ImageVariation>>
      _f$imageVariations = Field('imageVariations', _$imageVariations);
  static String? _$error(ImageVariationState v) => v.error;
  static const Field<ImageVariationState, String> _f$error =
      Field('error', _$error, opt: true);

  @override
  final Map<Symbol, Field<ImageVariationState, dynamic>> fields = const {
    #stateType: _f$stateType,
    #imageVariationSettings: _f$imageVariationSettings,
    #imageVariations: _f$imageVariations,
    #error: _f$error,
  };

  static ImageVariationState _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('ImageVariationState');
  }

  @override
  final Function instantiate = _instantiate;

  static ImageVariationState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImageVariationState>(map);
  }

  static ImageVariationState fromJson(String json) {
    return ensureInitialized().decodeJson<ImageVariationState>(json);
  }
}

mixin ImageVariationStateMappable {
  String toJson();
  Map<String, dynamic> toMap();
  ImageVariationStateCopyWith<ImageVariationState, ImageVariationState,
      ImageVariationState> get copyWith;
}

abstract class ImageVariationStateCopyWith<$R, $In extends ImageVariationState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? stateType});
  ImageVariationStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class ImageVariationStateInitialMapper
    extends ClassMapperBase<ImageVariationStateInitial> {
  ImageVariationStateInitialMapper._();

  static ImageVariationStateInitialMapper? _instance;
  static ImageVariationStateInitialMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ImageVariationStateInitialMapper._());
      ImageVariationStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImageVariationStateInitial';

  static String _$stateType(ImageVariationStateInitial v) => v.stateType;
  static const Field<ImageVariationStateInitial, String> _f$stateType = Field(
      'stateType', _$stateType,
      opt: true, def: imageVariationStateInitialType);
  static ImageVariationSettings _$imageVariationSettings(
          ImageVariationStateInitial v) =>
      v.imageVariationSettings;
  static const Field<ImageVariationStateInitial, ImageVariationSettings>
      _f$imageVariationSettings = Field(
          'imageVariationSettings', _$imageVariationSettings,
          mode: FieldMode.member);
  static List<ImageVariation> _$imageVariations(ImageVariationStateInitial v) =>
      v.imageVariations;
  static const Field<ImageVariationStateInitial, List<ImageVariation>>
      _f$imageVariations =
      Field('imageVariations', _$imageVariations, mode: FieldMode.member);
  static String? _$error(ImageVariationStateInitial v) => v.error;
  static const Field<ImageVariationStateInitial, String> _f$error =
      Field('error', _$error, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<ImageVariationStateInitial, dynamic>> fields = const {
    #stateType: _f$stateType,
    #imageVariationSettings: _f$imageVariationSettings,
    #imageVariations: _f$imageVariations,
    #error: _f$error,
  };

  static ImageVariationStateInitial _instantiate(DecodingData data) {
    return ImageVariationStateInitial(stateType: data.dec(_f$stateType));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageVariationStateInitial fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImageVariationStateInitial>(map);
  }

  static ImageVariationStateInitial fromJson(String json) {
    return ensureInitialized().decodeJson<ImageVariationStateInitial>(json);
  }
}

mixin ImageVariationStateInitialMappable {
  String toJson() {
    return ImageVariationStateInitialMapper.ensureInitialized()
        .encodeJson<ImageVariationStateInitial>(
            this as ImageVariationStateInitial);
  }

  Map<String, dynamic> toMap() {
    return ImageVariationStateInitialMapper.ensureInitialized()
        .encodeMap<ImageVariationStateInitial>(
            this as ImageVariationStateInitial);
  }

  ImageVariationStateInitialCopyWith<ImageVariationStateInitial,
          ImageVariationStateInitial, ImageVariationStateInitial>
      get copyWith => _ImageVariationStateInitialCopyWithImpl(
          this as ImageVariationStateInitial, $identity, $identity);
  @override
  String toString() {
    return ImageVariationStateInitialMapper.ensureInitialized()
        .stringifyValue(this as ImageVariationStateInitial);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ImageVariationStateInitialMapper.ensureInitialized()
                .isValueEqual(this as ImageVariationStateInitial, other));
  }

  @override
  int get hashCode {
    return ImageVariationStateInitialMapper.ensureInitialized()
        .hashValue(this as ImageVariationStateInitial);
  }
}

extension ImageVariationStateInitialValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageVariationStateInitial, $Out> {
  ImageVariationStateInitialCopyWith<$R, ImageVariationStateInitial, $Out>
      get $asImageVariationStateInitial => $base
          .as((v, t, t2) => _ImageVariationStateInitialCopyWithImpl(v, t, t2));
}

abstract class ImageVariationStateInitialCopyWith<
    $R,
    $In extends ImageVariationStateInitial,
    $Out> implements ImageVariationStateCopyWith<$R, $In, $Out> {
  @override
  $R call({String? stateType});
  ImageVariationStateInitialCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ImageVariationStateInitialCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageVariationStateInitial, $Out>
    implements
        ImageVariationStateInitialCopyWith<$R, ImageVariationStateInitial,
            $Out> {
  _ImageVariationStateInitialCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageVariationStateInitial> $mapper =
      ImageVariationStateInitialMapper.ensureInitialized();
  @override
  $R call({String? stateType}) =>
      $apply(FieldCopyWithData({if (stateType != null) #stateType: stateType}));
  @override
  ImageVariationStateInitial $make(CopyWithData data) =>
      ImageVariationStateInitial(
          stateType: data.get(#stateType, or: $value.stateType));

  @override
  ImageVariationStateInitialCopyWith<$R2, ImageVariationStateInitial, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ImageVariationStateInitialCopyWithImpl($value, $cast, t);
}

class ImageVariationStateVariateImageInitialMapper
    extends ClassMapperBase<ImageVariationStateVariateImageInitial> {
  ImageVariationStateVariateImageInitialMapper._();

  static ImageVariationStateVariateImageInitialMapper? _instance;
  static ImageVariationStateVariateImageInitialMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ImageVariationStateVariateImageInitialMapper._());
      ImageVariationStateMapper.ensureInitialized();
      ImageVariationSettingsMapper.ensureInitialized();
      ImageVariationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImageVariationStateVariateImageInitial';

  static String _$stateType(ImageVariationStateVariateImageInitial v) =>
      v.stateType;
  static dynamic _arg$stateType(f) => f<String>();
  static const Field<ImageVariationStateVariateImageInitial, dynamic>
      _f$stateType = Field('stateType', _$stateType,
          opt: true,
          def: imageVariationStateVariateImageInitialType,
          arg: _arg$stateType);
  static ImageVariationSettings _$imageVariationSettings(
          ImageVariationStateVariateImageInitial v) =>
      v.imageVariationSettings;
  static const Field<ImageVariationStateVariateImageInitial,
          ImageVariationSettings> _f$imageVariationSettings =
      Field('imageVariationSettings', _$imageVariationSettings);
  static List<ImageVariation> _$imageVariations(
          ImageVariationStateVariateImageInitial v) =>
      v.imageVariations;
  static const Field<ImageVariationStateVariateImageInitial,
          List<ImageVariation>> _f$imageVariations =
      Field('imageVariations', _$imageVariations);
  static String? _$error(ImageVariationStateVariateImageInitial v) => v.error;
  static const Field<ImageVariationStateVariateImageInitial, String> _f$error =
      Field('error', _$error, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<ImageVariationStateVariateImageInitial, dynamic>>
      fields = const {
    #stateType: _f$stateType,
    #imageVariationSettings: _f$imageVariationSettings,
    #imageVariations: _f$imageVariations,
    #error: _f$error,
  };

  static ImageVariationStateVariateImageInitial _instantiate(
      DecodingData data) {
    return ImageVariationStateVariateImageInitial(
        stateType: data.dec(_f$stateType),
        imageVariationSettings: data.dec(_f$imageVariationSettings),
        imageVariations: data.dec(_f$imageVariations));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageVariationStateVariateImageInitial fromMap(
      Map<String, dynamic> map) {
    return ensureInitialized()
        .decodeMap<ImageVariationStateVariateImageInitial>(map);
  }

  static ImageVariationStateVariateImageInitial fromJson(String json) {
    return ensureInitialized()
        .decodeJson<ImageVariationStateVariateImageInitial>(json);
  }
}

mixin ImageVariationStateVariateImageInitialMappable {
  String toJson() {
    return ImageVariationStateVariateImageInitialMapper.ensureInitialized()
        .encodeJson<ImageVariationStateVariateImageInitial>(
            this as ImageVariationStateVariateImageInitial);
  }

  Map<String, dynamic> toMap() {
    return ImageVariationStateVariateImageInitialMapper.ensureInitialized()
        .encodeMap<ImageVariationStateVariateImageInitial>(
            this as ImageVariationStateVariateImageInitial);
  }

  ImageVariationStateVariateImageInitialCopyWith<
          ImageVariationStateVariateImageInitial,
          ImageVariationStateVariateImageInitial,
          ImageVariationStateVariateImageInitial>
      get copyWith => _ImageVariationStateVariateImageInitialCopyWithImpl(
          this as ImageVariationStateVariateImageInitial, $identity, $identity);
  @override
  String toString() {
    return ImageVariationStateVariateImageInitialMapper.ensureInitialized()
        .stringifyValue(this as ImageVariationStateVariateImageInitial);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ImageVariationStateVariateImageInitialMapper.ensureInitialized()
                .isValueEqual(
                    this as ImageVariationStateVariateImageInitial, other));
  }

  @override
  int get hashCode {
    return ImageVariationStateVariateImageInitialMapper.ensureInitialized()
        .hashValue(this as ImageVariationStateVariateImageInitial);
  }
}

extension ImageVariationStateVariateImageInitialValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageVariationStateVariateImageInitial, $Out> {
  ImageVariationStateVariateImageInitialCopyWith<$R,
          ImageVariationStateVariateImageInitial, $Out>
      get $asImageVariationStateVariateImageInitial => $base.as((v, t, t2) =>
          _ImageVariationStateVariateImageInitialCopyWithImpl(v, t, t2));
}

abstract class ImageVariationStateVariateImageInitialCopyWith<
    $R,
    $In extends ImageVariationStateVariateImageInitial,
    $Out> implements ImageVariationStateCopyWith<$R, $In, $Out> {
  @override
  ImageVariationSettingsCopyWith<$R, ImageVariationSettings,
      ImageVariationSettings> get imageVariationSettings;
  @override
  ListCopyWith<$R, ImageVariation,
          ImageVariationCopyWith<$R, ImageVariation, ImageVariation>>
      get imageVariations;
  @override
  $R call(
      {dynamic stateType,
      ImageVariationSettings? imageVariationSettings,
      List<ImageVariation>? imageVariations});
  ImageVariationStateVariateImageInitialCopyWith<$R2, $In, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImageVariationStateVariateImageInitialCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageVariationStateVariateImageInitial, $Out>
    implements
        ImageVariationStateVariateImageInitialCopyWith<$R,
            ImageVariationStateVariateImageInitial, $Out> {
  _ImageVariationStateVariateImageInitialCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageVariationStateVariateImageInitial> $mapper =
      ImageVariationStateVariateImageInitialMapper.ensureInitialized();
  @override
  ImageVariationSettingsCopyWith<$R, ImageVariationSettings,
          ImageVariationSettings>
      get imageVariationSettings => $value.imageVariationSettings.copyWith
          .$chain((v) => call(imageVariationSettings: v));
  @override
  ListCopyWith<$R, ImageVariation,
          ImageVariationCopyWith<$R, ImageVariation, ImageVariation>>
      get imageVariations => ListCopyWith($value.imageVariations,
          (v, t) => v.copyWith.$chain(t), (v) => call(imageVariations: v));
  @override
  $R call(
          {Object? stateType = $none,
          ImageVariationSettings? imageVariationSettings,
          List<ImageVariation>? imageVariations}) =>
      $apply(FieldCopyWithData({
        if (stateType != $none) #stateType: stateType,
        if (imageVariationSettings != null)
          #imageVariationSettings: imageVariationSettings,
        if (imageVariations != null) #imageVariations: imageVariations
      }));
  @override
  ImageVariationStateVariateImageInitial $make(CopyWithData data) =>
      ImageVariationStateVariateImageInitial(
          stateType: data.get(#stateType, or: $value.stateType),
          imageVariationSettings: data.get(#imageVariationSettings,
              or: $value.imageVariationSettings),
          imageVariations:
              data.get(#imageVariations, or: $value.imageVariations));

  @override
  ImageVariationStateVariateImageInitialCopyWith<$R2,
      ImageVariationStateVariateImageInitial, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ImageVariationStateVariateImageInitialCopyWithImpl($value, $cast, t);
}

class ImageVariationStateVariateImageProgressMapper
    extends ClassMapperBase<ImageVariationStateVariateImageProgress> {
  ImageVariationStateVariateImageProgressMapper._();

  static ImageVariationStateVariateImageProgressMapper? _instance;
  static ImageVariationStateVariateImageProgressMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ImageVariationStateVariateImageProgressMapper._());
      ImageVariationStateMapper.ensureInitialized();
      ImageVariationSettingsMapper.ensureInitialized();
      ImageVariationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImageVariationStateVariateImageProgress';

  static String _$stateType(ImageVariationStateVariateImageProgress v) =>
      v.stateType;
  static dynamic _arg$stateType(f) => f<String>();
  static const Field<ImageVariationStateVariateImageProgress, dynamic>
      _f$stateType = Field('stateType', _$stateType,
          opt: true,
          def: imageVariationStateVariateImageProgressType,
          arg: _arg$stateType);
  static ImageVariationSettings _$imageVariationSettings(
          ImageVariationStateVariateImageProgress v) =>
      v.imageVariationSettings;
  static const Field<ImageVariationStateVariateImageProgress,
          ImageVariationSettings> _f$imageVariationSettings =
      Field('imageVariationSettings', _$imageVariationSettings);
  static List<ImageVariation> _$imageVariations(
          ImageVariationStateVariateImageProgress v) =>
      v.imageVariations;
  static const Field<ImageVariationStateVariateImageProgress,
          List<ImageVariation>> _f$imageVariations =
      Field('imageVariations', _$imageVariations);
  static String? _$error(ImageVariationStateVariateImageProgress v) => v.error;
  static const Field<ImageVariationStateVariateImageProgress, String> _f$error =
      Field('error', _$error, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<ImageVariationStateVariateImageProgress, dynamic>>
      fields = const {
    #stateType: _f$stateType,
    #imageVariationSettings: _f$imageVariationSettings,
    #imageVariations: _f$imageVariations,
    #error: _f$error,
  };

  static ImageVariationStateVariateImageProgress _instantiate(
      DecodingData data) {
    return ImageVariationStateVariateImageProgress(
        stateType: data.dec(_f$stateType),
        imageVariationSettings: data.dec(_f$imageVariationSettings),
        imageVariations: data.dec(_f$imageVariations));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageVariationStateVariateImageProgress fromMap(
      Map<String, dynamic> map) {
    return ensureInitialized()
        .decodeMap<ImageVariationStateVariateImageProgress>(map);
  }

  static ImageVariationStateVariateImageProgress fromJson(String json) {
    return ensureInitialized()
        .decodeJson<ImageVariationStateVariateImageProgress>(json);
  }
}

mixin ImageVariationStateVariateImageProgressMappable {
  String toJson() {
    return ImageVariationStateVariateImageProgressMapper.ensureInitialized()
        .encodeJson<ImageVariationStateVariateImageProgress>(
            this as ImageVariationStateVariateImageProgress);
  }

  Map<String, dynamic> toMap() {
    return ImageVariationStateVariateImageProgressMapper.ensureInitialized()
        .encodeMap<ImageVariationStateVariateImageProgress>(
            this as ImageVariationStateVariateImageProgress);
  }

  ImageVariationStateVariateImageProgressCopyWith<
          ImageVariationStateVariateImageProgress,
          ImageVariationStateVariateImageProgress,
          ImageVariationStateVariateImageProgress>
      get copyWith => _ImageVariationStateVariateImageProgressCopyWithImpl(
          this as ImageVariationStateVariateImageProgress,
          $identity,
          $identity);
  @override
  String toString() {
    return ImageVariationStateVariateImageProgressMapper.ensureInitialized()
        .stringifyValue(this as ImageVariationStateVariateImageProgress);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ImageVariationStateVariateImageProgressMapper.ensureInitialized()
                .isValueEqual(
                    this as ImageVariationStateVariateImageProgress, other));
  }

  @override
  int get hashCode {
    return ImageVariationStateVariateImageProgressMapper.ensureInitialized()
        .hashValue(this as ImageVariationStateVariateImageProgress);
  }
}

extension ImageVariationStateVariateImageProgressValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageVariationStateVariateImageProgress, $Out> {
  ImageVariationStateVariateImageProgressCopyWith<$R,
          ImageVariationStateVariateImageProgress, $Out>
      get $asImageVariationStateVariateImageProgress => $base.as((v, t, t2) =>
          _ImageVariationStateVariateImageProgressCopyWithImpl(v, t, t2));
}

abstract class ImageVariationStateVariateImageProgressCopyWith<
    $R,
    $In extends ImageVariationStateVariateImageProgress,
    $Out> implements ImageVariationStateCopyWith<$R, $In, $Out> {
  @override
  ImageVariationSettingsCopyWith<$R, ImageVariationSettings,
      ImageVariationSettings> get imageVariationSettings;
  @override
  ListCopyWith<$R, ImageVariation,
          ImageVariationCopyWith<$R, ImageVariation, ImageVariation>>
      get imageVariations;
  @override
  $R call(
      {dynamic stateType,
      ImageVariationSettings? imageVariationSettings,
      List<ImageVariation>? imageVariations});
  ImageVariationStateVariateImageProgressCopyWith<$R2, $In, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImageVariationStateVariateImageProgressCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageVariationStateVariateImageProgress, $Out>
    implements
        ImageVariationStateVariateImageProgressCopyWith<$R,
            ImageVariationStateVariateImageProgress, $Out> {
  _ImageVariationStateVariateImageProgressCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageVariationStateVariateImageProgress> $mapper =
      ImageVariationStateVariateImageProgressMapper.ensureInitialized();
  @override
  ImageVariationSettingsCopyWith<$R, ImageVariationSettings,
          ImageVariationSettings>
      get imageVariationSettings => $value.imageVariationSettings.copyWith
          .$chain((v) => call(imageVariationSettings: v));
  @override
  ListCopyWith<$R, ImageVariation,
          ImageVariationCopyWith<$R, ImageVariation, ImageVariation>>
      get imageVariations => ListCopyWith($value.imageVariations,
          (v, t) => v.copyWith.$chain(t), (v) => call(imageVariations: v));
  @override
  $R call(
          {Object? stateType = $none,
          ImageVariationSettings? imageVariationSettings,
          List<ImageVariation>? imageVariations}) =>
      $apply(FieldCopyWithData({
        if (stateType != $none) #stateType: stateType,
        if (imageVariationSettings != null)
          #imageVariationSettings: imageVariationSettings,
        if (imageVariations != null) #imageVariations: imageVariations
      }));
  @override
  ImageVariationStateVariateImageProgress $make(CopyWithData data) =>
      ImageVariationStateVariateImageProgress(
          stateType: data.get(#stateType, or: $value.stateType),
          imageVariationSettings: data.get(#imageVariationSettings,
              or: $value.imageVariationSettings),
          imageVariations:
              data.get(#imageVariations, or: $value.imageVariations));

  @override
  ImageVariationStateVariateImageProgressCopyWith<$R2,
      ImageVariationStateVariateImageProgress, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ImageVariationStateVariateImageProgressCopyWithImpl($value, $cast, t);
}

class ImageVariationStateVariateImageSuccessMapper
    extends ClassMapperBase<ImageVariationStateVariateImageSuccess> {
  ImageVariationStateVariateImageSuccessMapper._();

  static ImageVariationStateVariateImageSuccessMapper? _instance;
  static ImageVariationStateVariateImageSuccessMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ImageVariationStateVariateImageSuccessMapper._());
      ImageVariationStateMapper.ensureInitialized();
      ImageVariationSettingsMapper.ensureInitialized();
      ImageVariationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImageVariationStateVariateImageSuccess';

  static String _$stateType(ImageVariationStateVariateImageSuccess v) =>
      v.stateType;
  static dynamic _arg$stateType(f) => f<String>();
  static const Field<ImageVariationStateVariateImageSuccess, dynamic>
      _f$stateType = Field('stateType', _$stateType,
          opt: true,
          def: imageVariationStateVariateImageSuccessType,
          arg: _arg$stateType);
  static ImageVariationSettings _$imageVariationSettings(
          ImageVariationStateVariateImageSuccess v) =>
      v.imageVariationSettings;
  static const Field<ImageVariationStateVariateImageSuccess,
          ImageVariationSettings> _f$imageVariationSettings =
      Field('imageVariationSettings', _$imageVariationSettings);
  static List<ImageVariation> _$imageVariations(
          ImageVariationStateVariateImageSuccess v) =>
      v.imageVariations;
  static const Field<ImageVariationStateVariateImageSuccess,
          List<ImageVariation>> _f$imageVariations =
      Field('imageVariations', _$imageVariations);
  static String? _$error(ImageVariationStateVariateImageSuccess v) => v.error;
  static const Field<ImageVariationStateVariateImageSuccess, String> _f$error =
      Field('error', _$error, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<ImageVariationStateVariateImageSuccess, dynamic>>
      fields = const {
    #stateType: _f$stateType,
    #imageVariationSettings: _f$imageVariationSettings,
    #imageVariations: _f$imageVariations,
    #error: _f$error,
  };

  static ImageVariationStateVariateImageSuccess _instantiate(
      DecodingData data) {
    return ImageVariationStateVariateImageSuccess(
        stateType: data.dec(_f$stateType),
        imageVariationSettings: data.dec(_f$imageVariationSettings),
        imageVariations: data.dec(_f$imageVariations));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageVariationStateVariateImageSuccess fromMap(
      Map<String, dynamic> map) {
    return ensureInitialized()
        .decodeMap<ImageVariationStateVariateImageSuccess>(map);
  }

  static ImageVariationStateVariateImageSuccess fromJson(String json) {
    return ensureInitialized()
        .decodeJson<ImageVariationStateVariateImageSuccess>(json);
  }
}

mixin ImageVariationStateVariateImageSuccessMappable {
  String toJson() {
    return ImageVariationStateVariateImageSuccessMapper.ensureInitialized()
        .encodeJson<ImageVariationStateVariateImageSuccess>(
            this as ImageVariationStateVariateImageSuccess);
  }

  Map<String, dynamic> toMap() {
    return ImageVariationStateVariateImageSuccessMapper.ensureInitialized()
        .encodeMap<ImageVariationStateVariateImageSuccess>(
            this as ImageVariationStateVariateImageSuccess);
  }

  ImageVariationStateVariateImageSuccessCopyWith<
          ImageVariationStateVariateImageSuccess,
          ImageVariationStateVariateImageSuccess,
          ImageVariationStateVariateImageSuccess>
      get copyWith => _ImageVariationStateVariateImageSuccessCopyWithImpl(
          this as ImageVariationStateVariateImageSuccess, $identity, $identity);
  @override
  String toString() {
    return ImageVariationStateVariateImageSuccessMapper.ensureInitialized()
        .stringifyValue(this as ImageVariationStateVariateImageSuccess);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ImageVariationStateVariateImageSuccessMapper.ensureInitialized()
                .isValueEqual(
                    this as ImageVariationStateVariateImageSuccess, other));
  }

  @override
  int get hashCode {
    return ImageVariationStateVariateImageSuccessMapper.ensureInitialized()
        .hashValue(this as ImageVariationStateVariateImageSuccess);
  }
}

extension ImageVariationStateVariateImageSuccessValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageVariationStateVariateImageSuccess, $Out> {
  ImageVariationStateVariateImageSuccessCopyWith<$R,
          ImageVariationStateVariateImageSuccess, $Out>
      get $asImageVariationStateVariateImageSuccess => $base.as((v, t, t2) =>
          _ImageVariationStateVariateImageSuccessCopyWithImpl(v, t, t2));
}

abstract class ImageVariationStateVariateImageSuccessCopyWith<
    $R,
    $In extends ImageVariationStateVariateImageSuccess,
    $Out> implements ImageVariationStateCopyWith<$R, $In, $Out> {
  @override
  ImageVariationSettingsCopyWith<$R, ImageVariationSettings,
      ImageVariationSettings> get imageVariationSettings;
  @override
  ListCopyWith<$R, ImageVariation,
          ImageVariationCopyWith<$R, ImageVariation, ImageVariation>>
      get imageVariations;
  @override
  $R call(
      {dynamic stateType,
      ImageVariationSettings? imageVariationSettings,
      List<ImageVariation>? imageVariations});
  ImageVariationStateVariateImageSuccessCopyWith<$R2, $In, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImageVariationStateVariateImageSuccessCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageVariationStateVariateImageSuccess, $Out>
    implements
        ImageVariationStateVariateImageSuccessCopyWith<$R,
            ImageVariationStateVariateImageSuccess, $Out> {
  _ImageVariationStateVariateImageSuccessCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageVariationStateVariateImageSuccess> $mapper =
      ImageVariationStateVariateImageSuccessMapper.ensureInitialized();
  @override
  ImageVariationSettingsCopyWith<$R, ImageVariationSettings,
          ImageVariationSettings>
      get imageVariationSettings => $value.imageVariationSettings.copyWith
          .$chain((v) => call(imageVariationSettings: v));
  @override
  ListCopyWith<$R, ImageVariation,
          ImageVariationCopyWith<$R, ImageVariation, ImageVariation>>
      get imageVariations => ListCopyWith($value.imageVariations,
          (v, t) => v.copyWith.$chain(t), (v) => call(imageVariations: v));
  @override
  $R call(
          {Object? stateType = $none,
          ImageVariationSettings? imageVariationSettings,
          List<ImageVariation>? imageVariations}) =>
      $apply(FieldCopyWithData({
        if (stateType != $none) #stateType: stateType,
        if (imageVariationSettings != null)
          #imageVariationSettings: imageVariationSettings,
        if (imageVariations != null) #imageVariations: imageVariations
      }));
  @override
  ImageVariationStateVariateImageSuccess $make(CopyWithData data) =>
      ImageVariationStateVariateImageSuccess(
          stateType: data.get(#stateType, or: $value.stateType),
          imageVariationSettings: data.get(#imageVariationSettings,
              or: $value.imageVariationSettings),
          imageVariations:
              data.get(#imageVariations, or: $value.imageVariations));

  @override
  ImageVariationStateVariateImageSuccessCopyWith<$R2,
      ImageVariationStateVariateImageSuccess, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ImageVariationStateVariateImageSuccessCopyWithImpl($value, $cast, t);
}

class ImageVariationStateVariateImageFailureMapper
    extends ClassMapperBase<ImageVariationStateVariateImageFailure> {
  ImageVariationStateVariateImageFailureMapper._();

  static ImageVariationStateVariateImageFailureMapper? _instance;
  static ImageVariationStateVariateImageFailureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ImageVariationStateVariateImageFailureMapper._());
      ImageVariationStateMapper.ensureInitialized();
      ImageVariationSettingsMapper.ensureInitialized();
      ImageVariationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImageVariationStateVariateImageFailure';

  static String _$stateType(ImageVariationStateVariateImageFailure v) =>
      v.stateType;
  static dynamic _arg$stateType(f) => f<String>();
  static const Field<ImageVariationStateVariateImageFailure, dynamic>
      _f$stateType = Field('stateType', _$stateType,
          opt: true,
          def: imageVariationStateVariateImageFailureType,
          arg: _arg$stateType);
  static ImageVariationSettings _$imageVariationSettings(
          ImageVariationStateVariateImageFailure v) =>
      v.imageVariationSettings;
  static const Field<ImageVariationStateVariateImageFailure,
          ImageVariationSettings> _f$imageVariationSettings =
      Field('imageVariationSettings', _$imageVariationSettings);
  static List<ImageVariation> _$imageVariations(
          ImageVariationStateVariateImageFailure v) =>
      v.imageVariations;
  static const Field<ImageVariationStateVariateImageFailure,
          List<ImageVariation>> _f$imageVariations =
      Field('imageVariations', _$imageVariations);
  static String? _$error(ImageVariationStateVariateImageFailure v) => v.error;
  static const Field<ImageVariationStateVariateImageFailure, String> _f$error =
      Field('error', _$error);

  @override
  final Map<Symbol, Field<ImageVariationStateVariateImageFailure, dynamic>>
      fields = const {
    #stateType: _f$stateType,
    #imageVariationSettings: _f$imageVariationSettings,
    #imageVariations: _f$imageVariations,
    #error: _f$error,
  };

  static ImageVariationStateVariateImageFailure _instantiate(
      DecodingData data) {
    return ImageVariationStateVariateImageFailure(
        stateType: data.dec(_f$stateType),
        imageVariationSettings: data.dec(_f$imageVariationSettings),
        imageVariations: data.dec(_f$imageVariations),
        error: data.dec(_f$error));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageVariationStateVariateImageFailure fromMap(
      Map<String, dynamic> map) {
    return ensureInitialized()
        .decodeMap<ImageVariationStateVariateImageFailure>(map);
  }

  static ImageVariationStateVariateImageFailure fromJson(String json) {
    return ensureInitialized()
        .decodeJson<ImageVariationStateVariateImageFailure>(json);
  }
}

mixin ImageVariationStateVariateImageFailureMappable {
  String toJson() {
    return ImageVariationStateVariateImageFailureMapper.ensureInitialized()
        .encodeJson<ImageVariationStateVariateImageFailure>(
            this as ImageVariationStateVariateImageFailure);
  }

  Map<String, dynamic> toMap() {
    return ImageVariationStateVariateImageFailureMapper.ensureInitialized()
        .encodeMap<ImageVariationStateVariateImageFailure>(
            this as ImageVariationStateVariateImageFailure);
  }

  ImageVariationStateVariateImageFailureCopyWith<
          ImageVariationStateVariateImageFailure,
          ImageVariationStateVariateImageFailure,
          ImageVariationStateVariateImageFailure>
      get copyWith => _ImageVariationStateVariateImageFailureCopyWithImpl(
          this as ImageVariationStateVariateImageFailure, $identity, $identity);
  @override
  String toString() {
    return ImageVariationStateVariateImageFailureMapper.ensureInitialized()
        .stringifyValue(this as ImageVariationStateVariateImageFailure);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ImageVariationStateVariateImageFailureMapper.ensureInitialized()
                .isValueEqual(
                    this as ImageVariationStateVariateImageFailure, other));
  }

  @override
  int get hashCode {
    return ImageVariationStateVariateImageFailureMapper.ensureInitialized()
        .hashValue(this as ImageVariationStateVariateImageFailure);
  }
}

extension ImageVariationStateVariateImageFailureValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageVariationStateVariateImageFailure, $Out> {
  ImageVariationStateVariateImageFailureCopyWith<$R,
          ImageVariationStateVariateImageFailure, $Out>
      get $asImageVariationStateVariateImageFailure => $base.as((v, t, t2) =>
          _ImageVariationStateVariateImageFailureCopyWithImpl(v, t, t2));
}

abstract class ImageVariationStateVariateImageFailureCopyWith<
    $R,
    $In extends ImageVariationStateVariateImageFailure,
    $Out> implements ImageVariationStateCopyWith<$R, $In, $Out> {
  @override
  ImageVariationSettingsCopyWith<$R, ImageVariationSettings,
      ImageVariationSettings> get imageVariationSettings;
  @override
  ListCopyWith<$R, ImageVariation,
          ImageVariationCopyWith<$R, ImageVariation, ImageVariation>>
      get imageVariations;
  @override
  $R call(
      {dynamic stateType,
      ImageVariationSettings? imageVariationSettings,
      List<ImageVariation>? imageVariations,
      covariant String? error});
  ImageVariationStateVariateImageFailureCopyWith<$R2, $In, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImageVariationStateVariateImageFailureCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageVariationStateVariateImageFailure, $Out>
    implements
        ImageVariationStateVariateImageFailureCopyWith<$R,
            ImageVariationStateVariateImageFailure, $Out> {
  _ImageVariationStateVariateImageFailureCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageVariationStateVariateImageFailure> $mapper =
      ImageVariationStateVariateImageFailureMapper.ensureInitialized();
  @override
  ImageVariationSettingsCopyWith<$R, ImageVariationSettings,
          ImageVariationSettings>
      get imageVariationSettings => $value.imageVariationSettings.copyWith
          .$chain((v) => call(imageVariationSettings: v));
  @override
  ListCopyWith<$R, ImageVariation,
          ImageVariationCopyWith<$R, ImageVariation, ImageVariation>>
      get imageVariations => ListCopyWith($value.imageVariations,
          (v, t) => v.copyWith.$chain(t), (v) => call(imageVariations: v));
  @override
  $R call(
          {Object? stateType = $none,
          ImageVariationSettings? imageVariationSettings,
          List<ImageVariation>? imageVariations,
          String? error}) =>
      $apply(FieldCopyWithData({
        if (stateType != $none) #stateType: stateType,
        if (imageVariationSettings != null)
          #imageVariationSettings: imageVariationSettings,
        if (imageVariations != null) #imageVariations: imageVariations,
        if (error != null) #error: error
      }));
  @override
  ImageVariationStateVariateImageFailure $make(CopyWithData data) =>
      ImageVariationStateVariateImageFailure(
          stateType: data.get(#stateType, or: $value.stateType),
          imageVariationSettings: data.get(#imageVariationSettings,
              or: $value.imageVariationSettings),
          imageVariations:
              data.get(#imageVariations, or: $value.imageVariations),
          error: data.get(#error, or: $value.error));

  @override
  ImageVariationStateVariateImageFailureCopyWith<$R2,
      ImageVariationStateVariateImageFailure, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ImageVariationStateVariateImageFailureCopyWithImpl($value, $cast, t);
}

class ImageVariationStateSettingsChangedProgressMapper
    extends ClassMapperBase<ImageVariationStateSettingsChangedProgress> {
  ImageVariationStateSettingsChangedProgressMapper._();

  static ImageVariationStateSettingsChangedProgressMapper? _instance;
  static ImageVariationStateSettingsChangedProgressMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
          _instance = ImageVariationStateSettingsChangedProgressMapper._());
      ImageVariationStateMapper.ensureInitialized();
      ImageVariationSettingsMapper.ensureInitialized();
      ImageVariationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImageVariationStateSettingsChangedProgress';

  static String _$stateType(ImageVariationStateSettingsChangedProgress v) =>
      v.stateType;
  static dynamic _arg$stateType(f) => f<String>();
  static const Field<ImageVariationStateSettingsChangedProgress, dynamic>
      _f$stateType = Field('stateType', _$stateType,
          opt: true,
          def: imageVariationStateSettingsChangedProgressType,
          arg: _arg$stateType);
  static ImageVariationSettings _$imageVariationSettings(
          ImageVariationStateSettingsChangedProgress v) =>
      v.imageVariationSettings;
  static const Field<ImageVariationStateSettingsChangedProgress,
          ImageVariationSettings> _f$imageVariationSettings =
      Field('imageVariationSettings', _$imageVariationSettings);
  static List<ImageVariation> _$imageVariations(
          ImageVariationStateSettingsChangedProgress v) =>
      v.imageVariations;
  static const Field<ImageVariationStateSettingsChangedProgress,
          List<ImageVariation>> _f$imageVariations =
      Field('imageVariations', _$imageVariations);
  static String? _$error(ImageVariationStateSettingsChangedProgress v) =>
      v.error;
  static const Field<ImageVariationStateSettingsChangedProgress, String>
      _f$error = Field('error', _$error, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<ImageVariationStateSettingsChangedProgress, dynamic>>
      fields = const {
    #stateType: _f$stateType,
    #imageVariationSettings: _f$imageVariationSettings,
    #imageVariations: _f$imageVariations,
    #error: _f$error,
  };

  static ImageVariationStateSettingsChangedProgress _instantiate(
      DecodingData data) {
    return ImageVariationStateSettingsChangedProgress(
        stateType: data.dec(_f$stateType),
        imageVariationSettings: data.dec(_f$imageVariationSettings),
        imageVariations: data.dec(_f$imageVariations));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageVariationStateSettingsChangedProgress fromMap(
      Map<String, dynamic> map) {
    return ensureInitialized()
        .decodeMap<ImageVariationStateSettingsChangedProgress>(map);
  }

  static ImageVariationStateSettingsChangedProgress fromJson(String json) {
    return ensureInitialized()
        .decodeJson<ImageVariationStateSettingsChangedProgress>(json);
  }
}

mixin ImageVariationStateSettingsChangedProgressMappable {
  String toJson() {
    return ImageVariationStateSettingsChangedProgressMapper.ensureInitialized()
        .encodeJson<ImageVariationStateSettingsChangedProgress>(
            this as ImageVariationStateSettingsChangedProgress);
  }

  Map<String, dynamic> toMap() {
    return ImageVariationStateSettingsChangedProgressMapper.ensureInitialized()
        .encodeMap<ImageVariationStateSettingsChangedProgress>(
            this as ImageVariationStateSettingsChangedProgress);
  }

  ImageVariationStateSettingsChangedProgressCopyWith<
          ImageVariationStateSettingsChangedProgress,
          ImageVariationStateSettingsChangedProgress,
          ImageVariationStateSettingsChangedProgress>
      get copyWith => _ImageVariationStateSettingsChangedProgressCopyWithImpl(
          this as ImageVariationStateSettingsChangedProgress,
          $identity,
          $identity);
  @override
  String toString() {
    return ImageVariationStateSettingsChangedProgressMapper.ensureInitialized()
        .stringifyValue(this as ImageVariationStateSettingsChangedProgress);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ImageVariationStateSettingsChangedProgressMapper.ensureInitialized()
                .isValueEqual(
                    this as ImageVariationStateSettingsChangedProgress, other));
  }

  @override
  int get hashCode {
    return ImageVariationStateSettingsChangedProgressMapper.ensureInitialized()
        .hashValue(this as ImageVariationStateSettingsChangedProgress);
  }
}

extension ImageVariationStateSettingsChangedProgressValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageVariationStateSettingsChangedProgress, $Out> {
  ImageVariationStateSettingsChangedProgressCopyWith<
      $R,
      ImageVariationStateSettingsChangedProgress,
      $Out> get $asImageVariationStateSettingsChangedProgress => $base.as((v, t,
          t2) =>
      _ImageVariationStateSettingsChangedProgressCopyWithImpl(v, t, t2));
}

abstract class ImageVariationStateSettingsChangedProgressCopyWith<
    $R,
    $In extends ImageVariationStateSettingsChangedProgress,
    $Out> implements ImageVariationStateCopyWith<$R, $In, $Out> {
  @override
  ImageVariationSettingsCopyWith<$R, ImageVariationSettings,
      ImageVariationSettings> get imageVariationSettings;
  @override
  ListCopyWith<$R, ImageVariation,
          ImageVariationCopyWith<$R, ImageVariation, ImageVariation>>
      get imageVariations;
  @override
  $R call(
      {dynamic stateType,
      ImageVariationSettings? imageVariationSettings,
      List<ImageVariation>? imageVariations});
  ImageVariationStateSettingsChangedProgressCopyWith<$R2, $In, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImageVariationStateSettingsChangedProgressCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageVariationStateSettingsChangedProgress,
        $Out>
    implements
        ImageVariationStateSettingsChangedProgressCopyWith<$R,
            ImageVariationStateSettingsChangedProgress, $Out> {
  _ImageVariationStateSettingsChangedProgressCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageVariationStateSettingsChangedProgress>
      $mapper =
      ImageVariationStateSettingsChangedProgressMapper.ensureInitialized();
  @override
  ImageVariationSettingsCopyWith<$R, ImageVariationSettings,
          ImageVariationSettings>
      get imageVariationSettings => $value.imageVariationSettings.copyWith
          .$chain((v) => call(imageVariationSettings: v));
  @override
  ListCopyWith<$R, ImageVariation,
          ImageVariationCopyWith<$R, ImageVariation, ImageVariation>>
      get imageVariations => ListCopyWith($value.imageVariations,
          (v, t) => v.copyWith.$chain(t), (v) => call(imageVariations: v));
  @override
  $R call(
          {Object? stateType = $none,
          ImageVariationSettings? imageVariationSettings,
          List<ImageVariation>? imageVariations}) =>
      $apply(FieldCopyWithData({
        if (stateType != $none) #stateType: stateType,
        if (imageVariationSettings != null)
          #imageVariationSettings: imageVariationSettings,
        if (imageVariations != null) #imageVariations: imageVariations
      }));
  @override
  ImageVariationStateSettingsChangedProgress $make(CopyWithData data) =>
      ImageVariationStateSettingsChangedProgress(
          stateType: data.get(#stateType, or: $value.stateType),
          imageVariationSettings: data.get(#imageVariationSettings,
              or: $value.imageVariationSettings),
          imageVariations:
              data.get(#imageVariations, or: $value.imageVariations));

  @override
  ImageVariationStateSettingsChangedProgressCopyWith<$R2,
      ImageVariationStateSettingsChangedProgress, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ImageVariationStateSettingsChangedProgressCopyWithImpl($value, $cast, t);
}

class ImageVariationStateSettingsChangedSuccessMapper
    extends ClassMapperBase<ImageVariationStateSettingsChangedSuccess> {
  ImageVariationStateSettingsChangedSuccessMapper._();

  static ImageVariationStateSettingsChangedSuccessMapper? _instance;
  static ImageVariationStateSettingsChangedSuccessMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ImageVariationStateSettingsChangedSuccessMapper._());
      ImageVariationStateMapper.ensureInitialized();
      ImageVariationSettingsMapper.ensureInitialized();
      ImageVariationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImageVariationStateSettingsChangedSuccess';

  static String _$stateType(ImageVariationStateSettingsChangedSuccess v) =>
      v.stateType;
  static dynamic _arg$stateType(f) => f<String>();
  static const Field<ImageVariationStateSettingsChangedSuccess, dynamic>
      _f$stateType = Field('stateType', _$stateType,
          opt: true,
          def: imageVariationStateSettingsChangedSuccessType,
          arg: _arg$stateType);
  static ImageVariationSettings _$imageVariationSettings(
          ImageVariationStateSettingsChangedSuccess v) =>
      v.imageVariationSettings;
  static const Field<ImageVariationStateSettingsChangedSuccess,
          ImageVariationSettings> _f$imageVariationSettings =
      Field('imageVariationSettings', _$imageVariationSettings);
  static List<ImageVariation> _$imageVariations(
          ImageVariationStateSettingsChangedSuccess v) =>
      v.imageVariations;
  static const Field<ImageVariationStateSettingsChangedSuccess,
          List<ImageVariation>> _f$imageVariations =
      Field('imageVariations', _$imageVariations);
  static String? _$error(ImageVariationStateSettingsChangedSuccess v) =>
      v.error;
  static const Field<ImageVariationStateSettingsChangedSuccess, String>
      _f$error = Field('error', _$error, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<ImageVariationStateSettingsChangedSuccess, dynamic>>
      fields = const {
    #stateType: _f$stateType,
    #imageVariationSettings: _f$imageVariationSettings,
    #imageVariations: _f$imageVariations,
    #error: _f$error,
  };

  static ImageVariationStateSettingsChangedSuccess _instantiate(
      DecodingData data) {
    return ImageVariationStateSettingsChangedSuccess(
        stateType: data.dec(_f$stateType),
        imageVariationSettings: data.dec(_f$imageVariationSettings),
        imageVariations: data.dec(_f$imageVariations));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageVariationStateSettingsChangedSuccess fromMap(
      Map<String, dynamic> map) {
    return ensureInitialized()
        .decodeMap<ImageVariationStateSettingsChangedSuccess>(map);
  }

  static ImageVariationStateSettingsChangedSuccess fromJson(String json) {
    return ensureInitialized()
        .decodeJson<ImageVariationStateSettingsChangedSuccess>(json);
  }
}

mixin ImageVariationStateSettingsChangedSuccessMappable {
  String toJson() {
    return ImageVariationStateSettingsChangedSuccessMapper.ensureInitialized()
        .encodeJson<ImageVariationStateSettingsChangedSuccess>(
            this as ImageVariationStateSettingsChangedSuccess);
  }

  Map<String, dynamic> toMap() {
    return ImageVariationStateSettingsChangedSuccessMapper.ensureInitialized()
        .encodeMap<ImageVariationStateSettingsChangedSuccess>(
            this as ImageVariationStateSettingsChangedSuccess);
  }

  ImageVariationStateSettingsChangedSuccessCopyWith<
          ImageVariationStateSettingsChangedSuccess,
          ImageVariationStateSettingsChangedSuccess,
          ImageVariationStateSettingsChangedSuccess>
      get copyWith => _ImageVariationStateSettingsChangedSuccessCopyWithImpl(
          this as ImageVariationStateSettingsChangedSuccess,
          $identity,
          $identity);
  @override
  String toString() {
    return ImageVariationStateSettingsChangedSuccessMapper.ensureInitialized()
        .stringifyValue(this as ImageVariationStateSettingsChangedSuccess);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ImageVariationStateSettingsChangedSuccessMapper.ensureInitialized()
                .isValueEqual(
                    this as ImageVariationStateSettingsChangedSuccess, other));
  }

  @override
  int get hashCode {
    return ImageVariationStateSettingsChangedSuccessMapper.ensureInitialized()
        .hashValue(this as ImageVariationStateSettingsChangedSuccess);
  }
}

extension ImageVariationStateSettingsChangedSuccessValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageVariationStateSettingsChangedSuccess, $Out> {
  ImageVariationStateSettingsChangedSuccessCopyWith<$R,
          ImageVariationStateSettingsChangedSuccess, $Out>
      get $asImageVariationStateSettingsChangedSuccess => $base.as((v, t, t2) =>
          _ImageVariationStateSettingsChangedSuccessCopyWithImpl(v, t, t2));
}

abstract class ImageVariationStateSettingsChangedSuccessCopyWith<
    $R,
    $In extends ImageVariationStateSettingsChangedSuccess,
    $Out> implements ImageVariationStateCopyWith<$R, $In, $Out> {
  @override
  ImageVariationSettingsCopyWith<$R, ImageVariationSettings,
      ImageVariationSettings> get imageVariationSettings;
  @override
  ListCopyWith<$R, ImageVariation,
          ImageVariationCopyWith<$R, ImageVariation, ImageVariation>>
      get imageVariations;
  @override
  $R call(
      {dynamic stateType,
      ImageVariationSettings? imageVariationSettings,
      List<ImageVariation>? imageVariations});
  ImageVariationStateSettingsChangedSuccessCopyWith<$R2, $In, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImageVariationStateSettingsChangedSuccessCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageVariationStateSettingsChangedSuccess,
        $Out>
    implements
        ImageVariationStateSettingsChangedSuccessCopyWith<$R,
            ImageVariationStateSettingsChangedSuccess, $Out> {
  _ImageVariationStateSettingsChangedSuccessCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageVariationStateSettingsChangedSuccess>
      $mapper =
      ImageVariationStateSettingsChangedSuccessMapper.ensureInitialized();
  @override
  ImageVariationSettingsCopyWith<$R, ImageVariationSettings,
          ImageVariationSettings>
      get imageVariationSettings => $value.imageVariationSettings.copyWith
          .$chain((v) => call(imageVariationSettings: v));
  @override
  ListCopyWith<$R, ImageVariation,
          ImageVariationCopyWith<$R, ImageVariation, ImageVariation>>
      get imageVariations => ListCopyWith($value.imageVariations,
          (v, t) => v.copyWith.$chain(t), (v) => call(imageVariations: v));
  @override
  $R call(
          {Object? stateType = $none,
          ImageVariationSettings? imageVariationSettings,
          List<ImageVariation>? imageVariations}) =>
      $apply(FieldCopyWithData({
        if (stateType != $none) #stateType: stateType,
        if (imageVariationSettings != null)
          #imageVariationSettings: imageVariationSettings,
        if (imageVariations != null) #imageVariations: imageVariations
      }));
  @override
  ImageVariationStateSettingsChangedSuccess $make(CopyWithData data) =>
      ImageVariationStateSettingsChangedSuccess(
          stateType: data.get(#stateType, or: $value.stateType),
          imageVariationSettings: data.get(#imageVariationSettings,
              or: $value.imageVariationSettings),
          imageVariations:
              data.get(#imageVariations, or: $value.imageVariations));

  @override
  ImageVariationStateSettingsChangedSuccessCopyWith<$R2,
      ImageVariationStateSettingsChangedSuccess, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ImageVariationStateSettingsChangedSuccessCopyWithImpl($value, $cast, t);
}

class ImageVariationStateSettingsChangedFailureMapper
    extends ClassMapperBase<ImageVariationStateSettingsChangedFailure> {
  ImageVariationStateSettingsChangedFailureMapper._();

  static ImageVariationStateSettingsChangedFailureMapper? _instance;
  static ImageVariationStateSettingsChangedFailureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ImageVariationStateSettingsChangedFailureMapper._());
      ImageVariationStateMapper.ensureInitialized();
      ImageVariationSettingsMapper.ensureInitialized();
      ImageVariationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImageVariationStateSettingsChangedFailure';

  static String _$stateType(ImageVariationStateSettingsChangedFailure v) =>
      v.stateType;
  static dynamic _arg$stateType(f) => f<String>();
  static const Field<ImageVariationStateSettingsChangedFailure, dynamic>
      _f$stateType = Field('stateType', _$stateType,
          opt: true,
          def: imageVariationStateSettingsChangedFailureType,
          arg: _arg$stateType);
  static ImageVariationSettings _$imageVariationSettings(
          ImageVariationStateSettingsChangedFailure v) =>
      v.imageVariationSettings;
  static const Field<ImageVariationStateSettingsChangedFailure,
          ImageVariationSettings> _f$imageVariationSettings =
      Field('imageVariationSettings', _$imageVariationSettings);
  static List<ImageVariation> _$imageVariations(
          ImageVariationStateSettingsChangedFailure v) =>
      v.imageVariations;
  static const Field<ImageVariationStateSettingsChangedFailure,
          List<ImageVariation>> _f$imageVariations =
      Field('imageVariations', _$imageVariations);
  static String? _$error(ImageVariationStateSettingsChangedFailure v) =>
      v.error;
  static const Field<ImageVariationStateSettingsChangedFailure, String>
      _f$error = Field('error', _$error, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<ImageVariationStateSettingsChangedFailure, dynamic>>
      fields = const {
    #stateType: _f$stateType,
    #imageVariationSettings: _f$imageVariationSettings,
    #imageVariations: _f$imageVariations,
    #error: _f$error,
  };

  static ImageVariationStateSettingsChangedFailure _instantiate(
      DecodingData data) {
    return ImageVariationStateSettingsChangedFailure(
        stateType: data.dec(_f$stateType),
        imageVariationSettings: data.dec(_f$imageVariationSettings),
        imageVariations: data.dec(_f$imageVariations));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageVariationStateSettingsChangedFailure fromMap(
      Map<String, dynamic> map) {
    return ensureInitialized()
        .decodeMap<ImageVariationStateSettingsChangedFailure>(map);
  }

  static ImageVariationStateSettingsChangedFailure fromJson(String json) {
    return ensureInitialized()
        .decodeJson<ImageVariationStateSettingsChangedFailure>(json);
  }
}

mixin ImageVariationStateSettingsChangedFailureMappable {
  String toJson() {
    return ImageVariationStateSettingsChangedFailureMapper.ensureInitialized()
        .encodeJson<ImageVariationStateSettingsChangedFailure>(
            this as ImageVariationStateSettingsChangedFailure);
  }

  Map<String, dynamic> toMap() {
    return ImageVariationStateSettingsChangedFailureMapper.ensureInitialized()
        .encodeMap<ImageVariationStateSettingsChangedFailure>(
            this as ImageVariationStateSettingsChangedFailure);
  }

  ImageVariationStateSettingsChangedFailureCopyWith<
          ImageVariationStateSettingsChangedFailure,
          ImageVariationStateSettingsChangedFailure,
          ImageVariationStateSettingsChangedFailure>
      get copyWith => _ImageVariationStateSettingsChangedFailureCopyWithImpl(
          this as ImageVariationStateSettingsChangedFailure,
          $identity,
          $identity);
  @override
  String toString() {
    return ImageVariationStateSettingsChangedFailureMapper.ensureInitialized()
        .stringifyValue(this as ImageVariationStateSettingsChangedFailure);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ImageVariationStateSettingsChangedFailureMapper.ensureInitialized()
                .isValueEqual(
                    this as ImageVariationStateSettingsChangedFailure, other));
  }

  @override
  int get hashCode {
    return ImageVariationStateSettingsChangedFailureMapper.ensureInitialized()
        .hashValue(this as ImageVariationStateSettingsChangedFailure);
  }
}

extension ImageVariationStateSettingsChangedFailureValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageVariationStateSettingsChangedFailure, $Out> {
  ImageVariationStateSettingsChangedFailureCopyWith<$R,
          ImageVariationStateSettingsChangedFailure, $Out>
      get $asImageVariationStateSettingsChangedFailure => $base.as((v, t, t2) =>
          _ImageVariationStateSettingsChangedFailureCopyWithImpl(v, t, t2));
}

abstract class ImageVariationStateSettingsChangedFailureCopyWith<
    $R,
    $In extends ImageVariationStateSettingsChangedFailure,
    $Out> implements ImageVariationStateCopyWith<$R, $In, $Out> {
  @override
  ImageVariationSettingsCopyWith<$R, ImageVariationSettings,
      ImageVariationSettings> get imageVariationSettings;
  @override
  ListCopyWith<$R, ImageVariation,
          ImageVariationCopyWith<$R, ImageVariation, ImageVariation>>
      get imageVariations;
  @override
  $R call(
      {dynamic stateType,
      ImageVariationSettings? imageVariationSettings,
      List<ImageVariation>? imageVariations});
  ImageVariationStateSettingsChangedFailureCopyWith<$R2, $In, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImageVariationStateSettingsChangedFailureCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageVariationStateSettingsChangedFailure,
        $Out>
    implements
        ImageVariationStateSettingsChangedFailureCopyWith<$R,
            ImageVariationStateSettingsChangedFailure, $Out> {
  _ImageVariationStateSettingsChangedFailureCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageVariationStateSettingsChangedFailure>
      $mapper =
      ImageVariationStateSettingsChangedFailureMapper.ensureInitialized();
  @override
  ImageVariationSettingsCopyWith<$R, ImageVariationSettings,
          ImageVariationSettings>
      get imageVariationSettings => $value.imageVariationSettings.copyWith
          .$chain((v) => call(imageVariationSettings: v));
  @override
  ListCopyWith<$R, ImageVariation,
          ImageVariationCopyWith<$R, ImageVariation, ImageVariation>>
      get imageVariations => ListCopyWith($value.imageVariations,
          (v, t) => v.copyWith.$chain(t), (v) => call(imageVariations: v));
  @override
  $R call(
          {Object? stateType = $none,
          ImageVariationSettings? imageVariationSettings,
          List<ImageVariation>? imageVariations}) =>
      $apply(FieldCopyWithData({
        if (stateType != $none) #stateType: stateType,
        if (imageVariationSettings != null)
          #imageVariationSettings: imageVariationSettings,
        if (imageVariations != null) #imageVariations: imageVariations
      }));
  @override
  ImageVariationStateSettingsChangedFailure $make(CopyWithData data) =>
      ImageVariationStateSettingsChangedFailure(
          stateType: data.get(#stateType, or: $value.stateType),
          imageVariationSettings: data.get(#imageVariationSettings,
              or: $value.imageVariationSettings),
          imageVariations:
              data.get(#imageVariations, or: $value.imageVariations));

  @override
  ImageVariationStateSettingsChangedFailureCopyWith<$R2,
      ImageVariationStateSettingsChangedFailure, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ImageVariationStateSettingsChangedFailureCopyWithImpl($value, $cast, t);
}
