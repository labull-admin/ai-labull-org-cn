// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'image_generation_state.dart';

class ImageGenerationStateMapper extends ClassMapperBase<ImageGenerationState> {
  ImageGenerationStateMapper._();

  static ImageGenerationStateMapper? _instance;
  static ImageGenerationStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImageGenerationStateMapper._());
      ImageGenerationStateInitialMapper.ensureInitialized();
      ImageGenerationStateGenerateImageInitialMapper.ensureInitialized();
      ImageGenerationStateGenerateImageProgressMapper.ensureInitialized();
      ImageGenerationStateGenerateImageSuccessMapper.ensureInitialized();
      ImageGenerationStateGenerateImageFailureMapper.ensureInitialized();
      ImageGenerationStateSettingsChangedProgressMapper.ensureInitialized();
      ImageGenerationStateSettingsChangedSuccessMapper.ensureInitialized();
      ImageGenerationStateSettingsChangedFailureMapper.ensureInitialized();
      ImageGenerationSettingsMapper.ensureInitialized();
      ImageGenerationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImageGenerationState';

  static String _$stateType(ImageGenerationState v) => v.stateType;
  static const Field<ImageGenerationState, String> _f$stateType =
      Field('stateType', _$stateType);
  static ImageGenerationSettings _$imageGenerationSettings(
          ImageGenerationState v) =>
      v.imageGenerationSettings;
  static const Field<ImageGenerationState, ImageGenerationSettings>
      _f$imageGenerationSettings =
      Field('imageGenerationSettings', _$imageGenerationSettings);
  static List<ImageGeneration> _$imageGenerations(ImageGenerationState v) =>
      v.imageGenerations;
  static const Field<ImageGenerationState, List<ImageGeneration>>
      _f$imageGenerations = Field('imageGenerations', _$imageGenerations);
  static String? _$error(ImageGenerationState v) => v.error;
  static const Field<ImageGenerationState, String> _f$error =
      Field('error', _$error, opt: true);

  @override
  final Map<Symbol, Field<ImageGenerationState, dynamic>> fields = const {
    #stateType: _f$stateType,
    #imageGenerationSettings: _f$imageGenerationSettings,
    #imageGenerations: _f$imageGenerations,
    #error: _f$error,
  };

  static ImageGenerationState _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('ImageGenerationState');
  }

  @override
  final Function instantiate = _instantiate;

  static ImageGenerationState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImageGenerationState>(map);
  }

  static ImageGenerationState fromJson(String json) {
    return ensureInitialized().decodeJson<ImageGenerationState>(json);
  }
}

mixin ImageGenerationStateMappable {
  String toJson();
  Map<String, dynamic> toMap();
  ImageGenerationStateCopyWith<ImageGenerationState, ImageGenerationState,
      ImageGenerationState> get copyWith;
}

abstract class ImageGenerationStateCopyWith<
    $R,
    $In extends ImageGenerationState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? stateType});
  ImageGenerationStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class ImageGenerationStateInitialMapper
    extends ClassMapperBase<ImageGenerationStateInitial> {
  ImageGenerationStateInitialMapper._();

  static ImageGenerationStateInitialMapper? _instance;
  static ImageGenerationStateInitialMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ImageGenerationStateInitialMapper._());
      ImageGenerationStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImageGenerationStateInitial';

  static String _$stateType(ImageGenerationStateInitial v) => v.stateType;
  static const Field<ImageGenerationStateInitial, String> _f$stateType = Field(
      'stateType', _$stateType,
      opt: true, def: imageGenerationStateInitialType);
  static ImageGenerationSettings _$imageGenerationSettings(
          ImageGenerationStateInitial v) =>
      v.imageGenerationSettings;
  static const Field<ImageGenerationStateInitial, ImageGenerationSettings>
      _f$imageGenerationSettings = Field(
          'imageGenerationSettings', _$imageGenerationSettings,
          mode: FieldMode.member);
  static List<ImageGeneration> _$imageGenerations(
          ImageGenerationStateInitial v) =>
      v.imageGenerations;
  static const Field<ImageGenerationStateInitial, List<ImageGeneration>>
      _f$imageGenerations =
      Field('imageGenerations', _$imageGenerations, mode: FieldMode.member);
  static String? _$error(ImageGenerationStateInitial v) => v.error;
  static const Field<ImageGenerationStateInitial, String> _f$error =
      Field('error', _$error, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<ImageGenerationStateInitial, dynamic>> fields =
      const {
    #stateType: _f$stateType,
    #imageGenerationSettings: _f$imageGenerationSettings,
    #imageGenerations: _f$imageGenerations,
    #error: _f$error,
  };

  static ImageGenerationStateInitial _instantiate(DecodingData data) {
    return ImageGenerationStateInitial(stateType: data.dec(_f$stateType));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageGenerationStateInitial fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImageGenerationStateInitial>(map);
  }

  static ImageGenerationStateInitial fromJson(String json) {
    return ensureInitialized().decodeJson<ImageGenerationStateInitial>(json);
  }
}

mixin ImageGenerationStateInitialMappable {
  String toJson() {
    return ImageGenerationStateInitialMapper.ensureInitialized()
        .encodeJson<ImageGenerationStateInitial>(
            this as ImageGenerationStateInitial);
  }

  Map<String, dynamic> toMap() {
    return ImageGenerationStateInitialMapper.ensureInitialized()
        .encodeMap<ImageGenerationStateInitial>(
            this as ImageGenerationStateInitial);
  }

  ImageGenerationStateInitialCopyWith<ImageGenerationStateInitial,
          ImageGenerationStateInitial, ImageGenerationStateInitial>
      get copyWith => _ImageGenerationStateInitialCopyWithImpl(
          this as ImageGenerationStateInitial, $identity, $identity);
  @override
  String toString() {
    return ImageGenerationStateInitialMapper.ensureInitialized()
        .stringifyValue(this as ImageGenerationStateInitial);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ImageGenerationStateInitialMapper.ensureInitialized()
                .isValueEqual(this as ImageGenerationStateInitial, other));
  }

  @override
  int get hashCode {
    return ImageGenerationStateInitialMapper.ensureInitialized()
        .hashValue(this as ImageGenerationStateInitial);
  }
}

extension ImageGenerationStateInitialValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageGenerationStateInitial, $Out> {
  ImageGenerationStateInitialCopyWith<$R, ImageGenerationStateInitial, $Out>
      get $asImageGenerationStateInitial => $base
          .as((v, t, t2) => _ImageGenerationStateInitialCopyWithImpl(v, t, t2));
}

abstract class ImageGenerationStateInitialCopyWith<
    $R,
    $In extends ImageGenerationStateInitial,
    $Out> implements ImageGenerationStateCopyWith<$R, $In, $Out> {
  @override
  $R call({String? stateType});
  ImageGenerationStateInitialCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ImageGenerationStateInitialCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageGenerationStateInitial, $Out>
    implements
        ImageGenerationStateInitialCopyWith<$R, ImageGenerationStateInitial,
            $Out> {
  _ImageGenerationStateInitialCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageGenerationStateInitial> $mapper =
      ImageGenerationStateInitialMapper.ensureInitialized();
  @override
  $R call({String? stateType}) =>
      $apply(FieldCopyWithData({if (stateType != null) #stateType: stateType}));
  @override
  ImageGenerationStateInitial $make(CopyWithData data) =>
      ImageGenerationStateInitial(
          stateType: data.get(#stateType, or: $value.stateType));

  @override
  ImageGenerationStateInitialCopyWith<$R2, ImageGenerationStateInitial, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ImageGenerationStateInitialCopyWithImpl($value, $cast, t);
}

class ImageGenerationStateGenerateImageInitialMapper
    extends ClassMapperBase<ImageGenerationStateGenerateImageInitial> {
  ImageGenerationStateGenerateImageInitialMapper._();

  static ImageGenerationStateGenerateImageInitialMapper? _instance;
  static ImageGenerationStateGenerateImageInitialMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ImageGenerationStateGenerateImageInitialMapper._());
      ImageGenerationStateMapper.ensureInitialized();
      ImageGenerationSettingsMapper.ensureInitialized();
      ImageGenerationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImageGenerationStateGenerateImageInitial';

  static String _$stateType(ImageGenerationStateGenerateImageInitial v) =>
      v.stateType;
  static dynamic _arg$stateType(f) => f<String>();
  static const Field<ImageGenerationStateGenerateImageInitial, dynamic>
      _f$stateType = Field('stateType', _$stateType,
          opt: true,
          def: imageGenerationStateGenerateImageInitialType,
          arg: _arg$stateType);
  static ImageGenerationSettings _$imageGenerationSettings(
          ImageGenerationStateGenerateImageInitial v) =>
      v.imageGenerationSettings;
  static const Field<ImageGenerationStateGenerateImageInitial,
          ImageGenerationSettings> _f$imageGenerationSettings =
      Field('imageGenerationSettings', _$imageGenerationSettings);
  static List<ImageGeneration> _$imageGenerations(
          ImageGenerationStateGenerateImageInitial v) =>
      v.imageGenerations;
  static const Field<ImageGenerationStateGenerateImageInitial,
          List<ImageGeneration>> _f$imageGenerations =
      Field('imageGenerations', _$imageGenerations);
  static String? _$error(ImageGenerationStateGenerateImageInitial v) => v.error;
  static const Field<ImageGenerationStateGenerateImageInitial, String>
      _f$error = Field('error', _$error, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<ImageGenerationStateGenerateImageInitial, dynamic>>
      fields = const {
    #stateType: _f$stateType,
    #imageGenerationSettings: _f$imageGenerationSettings,
    #imageGenerations: _f$imageGenerations,
    #error: _f$error,
  };

  static ImageGenerationStateGenerateImageInitial _instantiate(
      DecodingData data) {
    return ImageGenerationStateGenerateImageInitial(
        stateType: data.dec(_f$stateType),
        imageGenerationSettings: data.dec(_f$imageGenerationSettings),
        imageGenerations: data.dec(_f$imageGenerations));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageGenerationStateGenerateImageInitial fromMap(
      Map<String, dynamic> map) {
    return ensureInitialized()
        .decodeMap<ImageGenerationStateGenerateImageInitial>(map);
  }

  static ImageGenerationStateGenerateImageInitial fromJson(String json) {
    return ensureInitialized()
        .decodeJson<ImageGenerationStateGenerateImageInitial>(json);
  }
}

mixin ImageGenerationStateGenerateImageInitialMappable {
  String toJson() {
    return ImageGenerationStateGenerateImageInitialMapper.ensureInitialized()
        .encodeJson<ImageGenerationStateGenerateImageInitial>(
            this as ImageGenerationStateGenerateImageInitial);
  }

  Map<String, dynamic> toMap() {
    return ImageGenerationStateGenerateImageInitialMapper.ensureInitialized()
        .encodeMap<ImageGenerationStateGenerateImageInitial>(
            this as ImageGenerationStateGenerateImageInitial);
  }

  ImageGenerationStateGenerateImageInitialCopyWith<
          ImageGenerationStateGenerateImageInitial,
          ImageGenerationStateGenerateImageInitial,
          ImageGenerationStateGenerateImageInitial>
      get copyWith => _ImageGenerationStateGenerateImageInitialCopyWithImpl(
          this as ImageGenerationStateGenerateImageInitial,
          $identity,
          $identity);
  @override
  String toString() {
    return ImageGenerationStateGenerateImageInitialMapper.ensureInitialized()
        .stringifyValue(this as ImageGenerationStateGenerateImageInitial);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ImageGenerationStateGenerateImageInitialMapper.ensureInitialized()
                .isValueEqual(
                    this as ImageGenerationStateGenerateImageInitial, other));
  }

  @override
  int get hashCode {
    return ImageGenerationStateGenerateImageInitialMapper.ensureInitialized()
        .hashValue(this as ImageGenerationStateGenerateImageInitial);
  }
}

extension ImageGenerationStateGenerateImageInitialValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageGenerationStateGenerateImageInitial, $Out> {
  ImageGenerationStateGenerateImageInitialCopyWith<$R,
          ImageGenerationStateGenerateImageInitial, $Out>
      get $asImageGenerationStateGenerateImageInitial => $base.as((v, t, t2) =>
          _ImageGenerationStateGenerateImageInitialCopyWithImpl(v, t, t2));
}

abstract class ImageGenerationStateGenerateImageInitialCopyWith<
    $R,
    $In extends ImageGenerationStateGenerateImageInitial,
    $Out> implements ImageGenerationStateCopyWith<$R, $In, $Out> {
  @override
  ImageGenerationSettingsCopyWith<$R, ImageGenerationSettings,
      ImageGenerationSettings> get imageGenerationSettings;
  @override
  ListCopyWith<$R, ImageGeneration,
          ImageGenerationCopyWith<$R, ImageGeneration, ImageGeneration>>
      get imageGenerations;
  @override
  $R call(
      {dynamic stateType,
      ImageGenerationSettings? imageGenerationSettings,
      List<ImageGeneration>? imageGenerations});
  ImageGenerationStateGenerateImageInitialCopyWith<$R2, $In, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImageGenerationStateGenerateImageInitialCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageGenerationStateGenerateImageInitial,
        $Out>
    implements
        ImageGenerationStateGenerateImageInitialCopyWith<$R,
            ImageGenerationStateGenerateImageInitial, $Out> {
  _ImageGenerationStateGenerateImageInitialCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageGenerationStateGenerateImageInitial> $mapper =
      ImageGenerationStateGenerateImageInitialMapper.ensureInitialized();
  @override
  ImageGenerationSettingsCopyWith<$R, ImageGenerationSettings,
          ImageGenerationSettings>
      get imageGenerationSettings => $value.imageGenerationSettings.copyWith
          .$chain((v) => call(imageGenerationSettings: v));
  @override
  ListCopyWith<$R, ImageGeneration,
          ImageGenerationCopyWith<$R, ImageGeneration, ImageGeneration>>
      get imageGenerations => ListCopyWith($value.imageGenerations,
          (v, t) => v.copyWith.$chain(t), (v) => call(imageGenerations: v));
  @override
  $R call(
          {Object? stateType = $none,
          ImageGenerationSettings? imageGenerationSettings,
          List<ImageGeneration>? imageGenerations}) =>
      $apply(FieldCopyWithData({
        if (stateType != $none) #stateType: stateType,
        if (imageGenerationSettings != null)
          #imageGenerationSettings: imageGenerationSettings,
        if (imageGenerations != null) #imageGenerations: imageGenerations
      }));
  @override
  ImageGenerationStateGenerateImageInitial $make(CopyWithData data) =>
      ImageGenerationStateGenerateImageInitial(
          stateType: data.get(#stateType, or: $value.stateType),
          imageGenerationSettings: data.get(#imageGenerationSettings,
              or: $value.imageGenerationSettings),
          imageGenerations:
              data.get(#imageGenerations, or: $value.imageGenerations));

  @override
  ImageGenerationStateGenerateImageInitialCopyWith<$R2,
      ImageGenerationStateGenerateImageInitial, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ImageGenerationStateGenerateImageInitialCopyWithImpl($value, $cast, t);
}

class ImageGenerationStateGenerateImageProgressMapper
    extends ClassMapperBase<ImageGenerationStateGenerateImageProgress> {
  ImageGenerationStateGenerateImageProgressMapper._();

  static ImageGenerationStateGenerateImageProgressMapper? _instance;
  static ImageGenerationStateGenerateImageProgressMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ImageGenerationStateGenerateImageProgressMapper._());
      ImageGenerationStateMapper.ensureInitialized();
      ImageGenerationSettingsMapper.ensureInitialized();
      ImageGenerationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImageGenerationStateGenerateImageProgress';

  static String _$stateType(ImageGenerationStateGenerateImageProgress v) =>
      v.stateType;
  static dynamic _arg$stateType(f) => f<String>();
  static const Field<ImageGenerationStateGenerateImageProgress, dynamic>
      _f$stateType = Field('stateType', _$stateType,
          opt: true,
          def: imageGenerationStateGenerateImageProgressType,
          arg: _arg$stateType);
  static ImageGenerationSettings _$imageGenerationSettings(
          ImageGenerationStateGenerateImageProgress v) =>
      v.imageGenerationSettings;
  static const Field<ImageGenerationStateGenerateImageProgress,
          ImageGenerationSettings> _f$imageGenerationSettings =
      Field('imageGenerationSettings', _$imageGenerationSettings);
  static List<ImageGeneration> _$imageGenerations(
          ImageGenerationStateGenerateImageProgress v) =>
      v.imageGenerations;
  static const Field<ImageGenerationStateGenerateImageProgress,
          List<ImageGeneration>> _f$imageGenerations =
      Field('imageGenerations', _$imageGenerations);
  static String? _$error(ImageGenerationStateGenerateImageProgress v) =>
      v.error;
  static const Field<ImageGenerationStateGenerateImageProgress, String>
      _f$error = Field('error', _$error, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<ImageGenerationStateGenerateImageProgress, dynamic>>
      fields = const {
    #stateType: _f$stateType,
    #imageGenerationSettings: _f$imageGenerationSettings,
    #imageGenerations: _f$imageGenerations,
    #error: _f$error,
  };

  static ImageGenerationStateGenerateImageProgress _instantiate(
      DecodingData data) {
    return ImageGenerationStateGenerateImageProgress(
        stateType: data.dec(_f$stateType),
        imageGenerationSettings: data.dec(_f$imageGenerationSettings),
        imageGenerations: data.dec(_f$imageGenerations));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageGenerationStateGenerateImageProgress fromMap(
      Map<String, dynamic> map) {
    return ensureInitialized()
        .decodeMap<ImageGenerationStateGenerateImageProgress>(map);
  }

  static ImageGenerationStateGenerateImageProgress fromJson(String json) {
    return ensureInitialized()
        .decodeJson<ImageGenerationStateGenerateImageProgress>(json);
  }
}

mixin ImageGenerationStateGenerateImageProgressMappable {
  String toJson() {
    return ImageGenerationStateGenerateImageProgressMapper.ensureInitialized()
        .encodeJson<ImageGenerationStateGenerateImageProgress>(
            this as ImageGenerationStateGenerateImageProgress);
  }

  Map<String, dynamic> toMap() {
    return ImageGenerationStateGenerateImageProgressMapper.ensureInitialized()
        .encodeMap<ImageGenerationStateGenerateImageProgress>(
            this as ImageGenerationStateGenerateImageProgress);
  }

  ImageGenerationStateGenerateImageProgressCopyWith<
          ImageGenerationStateGenerateImageProgress,
          ImageGenerationStateGenerateImageProgress,
          ImageGenerationStateGenerateImageProgress>
      get copyWith => _ImageGenerationStateGenerateImageProgressCopyWithImpl(
          this as ImageGenerationStateGenerateImageProgress,
          $identity,
          $identity);
  @override
  String toString() {
    return ImageGenerationStateGenerateImageProgressMapper.ensureInitialized()
        .stringifyValue(this as ImageGenerationStateGenerateImageProgress);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ImageGenerationStateGenerateImageProgressMapper.ensureInitialized()
                .isValueEqual(
                    this as ImageGenerationStateGenerateImageProgress, other));
  }

  @override
  int get hashCode {
    return ImageGenerationStateGenerateImageProgressMapper.ensureInitialized()
        .hashValue(this as ImageGenerationStateGenerateImageProgress);
  }
}

extension ImageGenerationStateGenerateImageProgressValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageGenerationStateGenerateImageProgress, $Out> {
  ImageGenerationStateGenerateImageProgressCopyWith<$R,
          ImageGenerationStateGenerateImageProgress, $Out>
      get $asImageGenerationStateGenerateImageProgress => $base.as((v, t, t2) =>
          _ImageGenerationStateGenerateImageProgressCopyWithImpl(v, t, t2));
}

abstract class ImageGenerationStateGenerateImageProgressCopyWith<
    $R,
    $In extends ImageGenerationStateGenerateImageProgress,
    $Out> implements ImageGenerationStateCopyWith<$R, $In, $Out> {
  @override
  ImageGenerationSettingsCopyWith<$R, ImageGenerationSettings,
      ImageGenerationSettings> get imageGenerationSettings;
  @override
  ListCopyWith<$R, ImageGeneration,
          ImageGenerationCopyWith<$R, ImageGeneration, ImageGeneration>>
      get imageGenerations;
  @override
  $R call(
      {dynamic stateType,
      ImageGenerationSettings? imageGenerationSettings,
      List<ImageGeneration>? imageGenerations});
  ImageGenerationStateGenerateImageProgressCopyWith<$R2, $In, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImageGenerationStateGenerateImageProgressCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageGenerationStateGenerateImageProgress,
        $Out>
    implements
        ImageGenerationStateGenerateImageProgressCopyWith<$R,
            ImageGenerationStateGenerateImageProgress, $Out> {
  _ImageGenerationStateGenerateImageProgressCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageGenerationStateGenerateImageProgress>
      $mapper =
      ImageGenerationStateGenerateImageProgressMapper.ensureInitialized();
  @override
  ImageGenerationSettingsCopyWith<$R, ImageGenerationSettings,
          ImageGenerationSettings>
      get imageGenerationSettings => $value.imageGenerationSettings.copyWith
          .$chain((v) => call(imageGenerationSettings: v));
  @override
  ListCopyWith<$R, ImageGeneration,
          ImageGenerationCopyWith<$R, ImageGeneration, ImageGeneration>>
      get imageGenerations => ListCopyWith($value.imageGenerations,
          (v, t) => v.copyWith.$chain(t), (v) => call(imageGenerations: v));
  @override
  $R call(
          {Object? stateType = $none,
          ImageGenerationSettings? imageGenerationSettings,
          List<ImageGeneration>? imageGenerations}) =>
      $apply(FieldCopyWithData({
        if (stateType != $none) #stateType: stateType,
        if (imageGenerationSettings != null)
          #imageGenerationSettings: imageGenerationSettings,
        if (imageGenerations != null) #imageGenerations: imageGenerations
      }));
  @override
  ImageGenerationStateGenerateImageProgress $make(CopyWithData data) =>
      ImageGenerationStateGenerateImageProgress(
          stateType: data.get(#stateType, or: $value.stateType),
          imageGenerationSettings: data.get(#imageGenerationSettings,
              or: $value.imageGenerationSettings),
          imageGenerations:
              data.get(#imageGenerations, or: $value.imageGenerations));

  @override
  ImageGenerationStateGenerateImageProgressCopyWith<$R2,
      ImageGenerationStateGenerateImageProgress, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ImageGenerationStateGenerateImageProgressCopyWithImpl($value, $cast, t);
}

class ImageGenerationStateGenerateImageSuccessMapper
    extends ClassMapperBase<ImageGenerationStateGenerateImageSuccess> {
  ImageGenerationStateGenerateImageSuccessMapper._();

  static ImageGenerationStateGenerateImageSuccessMapper? _instance;
  static ImageGenerationStateGenerateImageSuccessMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ImageGenerationStateGenerateImageSuccessMapper._());
      ImageGenerationStateMapper.ensureInitialized();
      ImageGenerationSettingsMapper.ensureInitialized();
      ImageGenerationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImageGenerationStateGenerateImageSuccess';

  static String _$stateType(ImageGenerationStateGenerateImageSuccess v) =>
      v.stateType;
  static dynamic _arg$stateType(f) => f<String>();
  static const Field<ImageGenerationStateGenerateImageSuccess, dynamic>
      _f$stateType = Field('stateType', _$stateType,
          opt: true,
          def: imageGenerationStateGenerateImageSuccessType,
          arg: _arg$stateType);
  static ImageGenerationSettings _$imageGenerationSettings(
          ImageGenerationStateGenerateImageSuccess v) =>
      v.imageGenerationSettings;
  static const Field<ImageGenerationStateGenerateImageSuccess,
          ImageGenerationSettings> _f$imageGenerationSettings =
      Field('imageGenerationSettings', _$imageGenerationSettings);
  static List<ImageGeneration> _$imageGenerations(
          ImageGenerationStateGenerateImageSuccess v) =>
      v.imageGenerations;
  static const Field<ImageGenerationStateGenerateImageSuccess,
          List<ImageGeneration>> _f$imageGenerations =
      Field('imageGenerations', _$imageGenerations);
  static String? _$error(ImageGenerationStateGenerateImageSuccess v) => v.error;
  static const Field<ImageGenerationStateGenerateImageSuccess, String>
      _f$error = Field('error', _$error, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<ImageGenerationStateGenerateImageSuccess, dynamic>>
      fields = const {
    #stateType: _f$stateType,
    #imageGenerationSettings: _f$imageGenerationSettings,
    #imageGenerations: _f$imageGenerations,
    #error: _f$error,
  };

  static ImageGenerationStateGenerateImageSuccess _instantiate(
      DecodingData data) {
    return ImageGenerationStateGenerateImageSuccess(
        stateType: data.dec(_f$stateType),
        imageGenerationSettings: data.dec(_f$imageGenerationSettings),
        imageGenerations: data.dec(_f$imageGenerations));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageGenerationStateGenerateImageSuccess fromMap(
      Map<String, dynamic> map) {
    return ensureInitialized()
        .decodeMap<ImageGenerationStateGenerateImageSuccess>(map);
  }

  static ImageGenerationStateGenerateImageSuccess fromJson(String json) {
    return ensureInitialized()
        .decodeJson<ImageGenerationStateGenerateImageSuccess>(json);
  }
}

mixin ImageGenerationStateGenerateImageSuccessMappable {
  String toJson() {
    return ImageGenerationStateGenerateImageSuccessMapper.ensureInitialized()
        .encodeJson<ImageGenerationStateGenerateImageSuccess>(
            this as ImageGenerationStateGenerateImageSuccess);
  }

  Map<String, dynamic> toMap() {
    return ImageGenerationStateGenerateImageSuccessMapper.ensureInitialized()
        .encodeMap<ImageGenerationStateGenerateImageSuccess>(
            this as ImageGenerationStateGenerateImageSuccess);
  }

  ImageGenerationStateGenerateImageSuccessCopyWith<
          ImageGenerationStateGenerateImageSuccess,
          ImageGenerationStateGenerateImageSuccess,
          ImageGenerationStateGenerateImageSuccess>
      get copyWith => _ImageGenerationStateGenerateImageSuccessCopyWithImpl(
          this as ImageGenerationStateGenerateImageSuccess,
          $identity,
          $identity);
  @override
  String toString() {
    return ImageGenerationStateGenerateImageSuccessMapper.ensureInitialized()
        .stringifyValue(this as ImageGenerationStateGenerateImageSuccess);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ImageGenerationStateGenerateImageSuccessMapper.ensureInitialized()
                .isValueEqual(
                    this as ImageGenerationStateGenerateImageSuccess, other));
  }

  @override
  int get hashCode {
    return ImageGenerationStateGenerateImageSuccessMapper.ensureInitialized()
        .hashValue(this as ImageGenerationStateGenerateImageSuccess);
  }
}

extension ImageGenerationStateGenerateImageSuccessValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageGenerationStateGenerateImageSuccess, $Out> {
  ImageGenerationStateGenerateImageSuccessCopyWith<$R,
          ImageGenerationStateGenerateImageSuccess, $Out>
      get $asImageGenerationStateGenerateImageSuccess => $base.as((v, t, t2) =>
          _ImageGenerationStateGenerateImageSuccessCopyWithImpl(v, t, t2));
}

abstract class ImageGenerationStateGenerateImageSuccessCopyWith<
    $R,
    $In extends ImageGenerationStateGenerateImageSuccess,
    $Out> implements ImageGenerationStateCopyWith<$R, $In, $Out> {
  @override
  ImageGenerationSettingsCopyWith<$R, ImageGenerationSettings,
      ImageGenerationSettings> get imageGenerationSettings;
  @override
  ListCopyWith<$R, ImageGeneration,
          ImageGenerationCopyWith<$R, ImageGeneration, ImageGeneration>>
      get imageGenerations;
  @override
  $R call(
      {dynamic stateType,
      ImageGenerationSettings? imageGenerationSettings,
      List<ImageGeneration>? imageGenerations});
  ImageGenerationStateGenerateImageSuccessCopyWith<$R2, $In, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImageGenerationStateGenerateImageSuccessCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageGenerationStateGenerateImageSuccess,
        $Out>
    implements
        ImageGenerationStateGenerateImageSuccessCopyWith<$R,
            ImageGenerationStateGenerateImageSuccess, $Out> {
  _ImageGenerationStateGenerateImageSuccessCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageGenerationStateGenerateImageSuccess> $mapper =
      ImageGenerationStateGenerateImageSuccessMapper.ensureInitialized();
  @override
  ImageGenerationSettingsCopyWith<$R, ImageGenerationSettings,
          ImageGenerationSettings>
      get imageGenerationSettings => $value.imageGenerationSettings.copyWith
          .$chain((v) => call(imageGenerationSettings: v));
  @override
  ListCopyWith<$R, ImageGeneration,
          ImageGenerationCopyWith<$R, ImageGeneration, ImageGeneration>>
      get imageGenerations => ListCopyWith($value.imageGenerations,
          (v, t) => v.copyWith.$chain(t), (v) => call(imageGenerations: v));
  @override
  $R call(
          {Object? stateType = $none,
          ImageGenerationSettings? imageGenerationSettings,
          List<ImageGeneration>? imageGenerations}) =>
      $apply(FieldCopyWithData({
        if (stateType != $none) #stateType: stateType,
        if (imageGenerationSettings != null)
          #imageGenerationSettings: imageGenerationSettings,
        if (imageGenerations != null) #imageGenerations: imageGenerations
      }));
  @override
  ImageGenerationStateGenerateImageSuccess $make(CopyWithData data) =>
      ImageGenerationStateGenerateImageSuccess(
          stateType: data.get(#stateType, or: $value.stateType),
          imageGenerationSettings: data.get(#imageGenerationSettings,
              or: $value.imageGenerationSettings),
          imageGenerations:
              data.get(#imageGenerations, or: $value.imageGenerations));

  @override
  ImageGenerationStateGenerateImageSuccessCopyWith<$R2,
      ImageGenerationStateGenerateImageSuccess, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ImageGenerationStateGenerateImageSuccessCopyWithImpl($value, $cast, t);
}

class ImageGenerationStateGenerateImageFailureMapper
    extends ClassMapperBase<ImageGenerationStateGenerateImageFailure> {
  ImageGenerationStateGenerateImageFailureMapper._();

  static ImageGenerationStateGenerateImageFailureMapper? _instance;
  static ImageGenerationStateGenerateImageFailureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ImageGenerationStateGenerateImageFailureMapper._());
      ImageGenerationStateMapper.ensureInitialized();
      ImageGenerationSettingsMapper.ensureInitialized();
      ImageGenerationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImageGenerationStateGenerateImageFailure';

  static String _$stateType(ImageGenerationStateGenerateImageFailure v) =>
      v.stateType;
  static dynamic _arg$stateType(f) => f<String>();
  static const Field<ImageGenerationStateGenerateImageFailure, dynamic>
      _f$stateType = Field('stateType', _$stateType,
          opt: true,
          def: imageGenerationStateGenerateImageFailureType,
          arg: _arg$stateType);
  static ImageGenerationSettings _$imageGenerationSettings(
          ImageGenerationStateGenerateImageFailure v) =>
      v.imageGenerationSettings;
  static const Field<ImageGenerationStateGenerateImageFailure,
          ImageGenerationSettings> _f$imageGenerationSettings =
      Field('imageGenerationSettings', _$imageGenerationSettings);
  static List<ImageGeneration> _$imageGenerations(
          ImageGenerationStateGenerateImageFailure v) =>
      v.imageGenerations;
  static const Field<ImageGenerationStateGenerateImageFailure,
          List<ImageGeneration>> _f$imageGenerations =
      Field('imageGenerations', _$imageGenerations);
  static String? _$error(ImageGenerationStateGenerateImageFailure v) => v.error;
  static const Field<ImageGenerationStateGenerateImageFailure, String>
      _f$error = Field('error', _$error);

  @override
  final Map<Symbol, Field<ImageGenerationStateGenerateImageFailure, dynamic>>
      fields = const {
    #stateType: _f$stateType,
    #imageGenerationSettings: _f$imageGenerationSettings,
    #imageGenerations: _f$imageGenerations,
    #error: _f$error,
  };

  static ImageGenerationStateGenerateImageFailure _instantiate(
      DecodingData data) {
    return ImageGenerationStateGenerateImageFailure(
        stateType: data.dec(_f$stateType),
        imageGenerationSettings: data.dec(_f$imageGenerationSettings),
        imageGenerations: data.dec(_f$imageGenerations),
        error: data.dec(_f$error));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageGenerationStateGenerateImageFailure fromMap(
      Map<String, dynamic> map) {
    return ensureInitialized()
        .decodeMap<ImageGenerationStateGenerateImageFailure>(map);
  }

  static ImageGenerationStateGenerateImageFailure fromJson(String json) {
    return ensureInitialized()
        .decodeJson<ImageGenerationStateGenerateImageFailure>(json);
  }
}

mixin ImageGenerationStateGenerateImageFailureMappable {
  String toJson() {
    return ImageGenerationStateGenerateImageFailureMapper.ensureInitialized()
        .encodeJson<ImageGenerationStateGenerateImageFailure>(
            this as ImageGenerationStateGenerateImageFailure);
  }

  Map<String, dynamic> toMap() {
    return ImageGenerationStateGenerateImageFailureMapper.ensureInitialized()
        .encodeMap<ImageGenerationStateGenerateImageFailure>(
            this as ImageGenerationStateGenerateImageFailure);
  }

  ImageGenerationStateGenerateImageFailureCopyWith<
          ImageGenerationStateGenerateImageFailure,
          ImageGenerationStateGenerateImageFailure,
          ImageGenerationStateGenerateImageFailure>
      get copyWith => _ImageGenerationStateGenerateImageFailureCopyWithImpl(
          this as ImageGenerationStateGenerateImageFailure,
          $identity,
          $identity);
  @override
  String toString() {
    return ImageGenerationStateGenerateImageFailureMapper.ensureInitialized()
        .stringifyValue(this as ImageGenerationStateGenerateImageFailure);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ImageGenerationStateGenerateImageFailureMapper.ensureInitialized()
                .isValueEqual(
                    this as ImageGenerationStateGenerateImageFailure, other));
  }

  @override
  int get hashCode {
    return ImageGenerationStateGenerateImageFailureMapper.ensureInitialized()
        .hashValue(this as ImageGenerationStateGenerateImageFailure);
  }
}

extension ImageGenerationStateGenerateImageFailureValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageGenerationStateGenerateImageFailure, $Out> {
  ImageGenerationStateGenerateImageFailureCopyWith<$R,
          ImageGenerationStateGenerateImageFailure, $Out>
      get $asImageGenerationStateGenerateImageFailure => $base.as((v, t, t2) =>
          _ImageGenerationStateGenerateImageFailureCopyWithImpl(v, t, t2));
}

abstract class ImageGenerationStateGenerateImageFailureCopyWith<
    $R,
    $In extends ImageGenerationStateGenerateImageFailure,
    $Out> implements ImageGenerationStateCopyWith<$R, $In, $Out> {
  @override
  ImageGenerationSettingsCopyWith<$R, ImageGenerationSettings,
      ImageGenerationSettings> get imageGenerationSettings;
  @override
  ListCopyWith<$R, ImageGeneration,
          ImageGenerationCopyWith<$R, ImageGeneration, ImageGeneration>>
      get imageGenerations;
  @override
  $R call(
      {dynamic stateType,
      ImageGenerationSettings? imageGenerationSettings,
      List<ImageGeneration>? imageGenerations,
      covariant String? error});
  ImageGenerationStateGenerateImageFailureCopyWith<$R2, $In, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImageGenerationStateGenerateImageFailureCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageGenerationStateGenerateImageFailure,
        $Out>
    implements
        ImageGenerationStateGenerateImageFailureCopyWith<$R,
            ImageGenerationStateGenerateImageFailure, $Out> {
  _ImageGenerationStateGenerateImageFailureCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageGenerationStateGenerateImageFailure> $mapper =
      ImageGenerationStateGenerateImageFailureMapper.ensureInitialized();
  @override
  ImageGenerationSettingsCopyWith<$R, ImageGenerationSettings,
          ImageGenerationSettings>
      get imageGenerationSettings => $value.imageGenerationSettings.copyWith
          .$chain((v) => call(imageGenerationSettings: v));
  @override
  ListCopyWith<$R, ImageGeneration,
          ImageGenerationCopyWith<$R, ImageGeneration, ImageGeneration>>
      get imageGenerations => ListCopyWith($value.imageGenerations,
          (v, t) => v.copyWith.$chain(t), (v) => call(imageGenerations: v));
  @override
  $R call(
          {Object? stateType = $none,
          ImageGenerationSettings? imageGenerationSettings,
          List<ImageGeneration>? imageGenerations,
          String? error}) =>
      $apply(FieldCopyWithData({
        if (stateType != $none) #stateType: stateType,
        if (imageGenerationSettings != null)
          #imageGenerationSettings: imageGenerationSettings,
        if (imageGenerations != null) #imageGenerations: imageGenerations,
        if (error != null) #error: error
      }));
  @override
  ImageGenerationStateGenerateImageFailure $make(CopyWithData data) =>
      ImageGenerationStateGenerateImageFailure(
          stateType: data.get(#stateType, or: $value.stateType),
          imageGenerationSettings: data.get(#imageGenerationSettings,
              or: $value.imageGenerationSettings),
          imageGenerations:
              data.get(#imageGenerations, or: $value.imageGenerations),
          error: data.get(#error, or: $value.error));

  @override
  ImageGenerationStateGenerateImageFailureCopyWith<$R2,
      ImageGenerationStateGenerateImageFailure, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ImageGenerationStateGenerateImageFailureCopyWithImpl($value, $cast, t);
}

class ImageGenerationStateSettingsChangedProgressMapper
    extends ClassMapperBase<ImageGenerationStateSettingsChangedProgress> {
  ImageGenerationStateSettingsChangedProgressMapper._();

  static ImageGenerationStateSettingsChangedProgressMapper? _instance;
  static ImageGenerationStateSettingsChangedProgressMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
          _instance = ImageGenerationStateSettingsChangedProgressMapper._());
      ImageGenerationStateMapper.ensureInitialized();
      ImageGenerationSettingsMapper.ensureInitialized();
      ImageGenerationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImageGenerationStateSettingsChangedProgress';

  static String _$stateType(ImageGenerationStateSettingsChangedProgress v) =>
      v.stateType;
  static dynamic _arg$stateType(f) => f<String>();
  static const Field<ImageGenerationStateSettingsChangedProgress, dynamic>
      _f$stateType = Field('stateType', _$stateType,
          opt: true,
          def: imageGenerationStateSettingsChangedProgressType,
          arg: _arg$stateType);
  static ImageGenerationSettings _$imageGenerationSettings(
          ImageGenerationStateSettingsChangedProgress v) =>
      v.imageGenerationSettings;
  static const Field<ImageGenerationStateSettingsChangedProgress,
          ImageGenerationSettings> _f$imageGenerationSettings =
      Field('imageGenerationSettings', _$imageGenerationSettings);
  static List<ImageGeneration> _$imageGenerations(
          ImageGenerationStateSettingsChangedProgress v) =>
      v.imageGenerations;
  static const Field<ImageGenerationStateSettingsChangedProgress,
          List<ImageGeneration>> _f$imageGenerations =
      Field('imageGenerations', _$imageGenerations);
  static String? _$error(ImageGenerationStateSettingsChangedProgress v) =>
      v.error;
  static const Field<ImageGenerationStateSettingsChangedProgress, String>
      _f$error = Field('error', _$error, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<ImageGenerationStateSettingsChangedProgress, dynamic>>
      fields = const {
    #stateType: _f$stateType,
    #imageGenerationSettings: _f$imageGenerationSettings,
    #imageGenerations: _f$imageGenerations,
    #error: _f$error,
  };

  static ImageGenerationStateSettingsChangedProgress _instantiate(
      DecodingData data) {
    return ImageGenerationStateSettingsChangedProgress(
        stateType: data.dec(_f$stateType),
        imageGenerationSettings: data.dec(_f$imageGenerationSettings),
        imageGenerations: data.dec(_f$imageGenerations));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageGenerationStateSettingsChangedProgress fromMap(
      Map<String, dynamic> map) {
    return ensureInitialized()
        .decodeMap<ImageGenerationStateSettingsChangedProgress>(map);
  }

  static ImageGenerationStateSettingsChangedProgress fromJson(String json) {
    return ensureInitialized()
        .decodeJson<ImageGenerationStateSettingsChangedProgress>(json);
  }
}

mixin ImageGenerationStateSettingsChangedProgressMappable {
  String toJson() {
    return ImageGenerationStateSettingsChangedProgressMapper.ensureInitialized()
        .encodeJson<ImageGenerationStateSettingsChangedProgress>(
            this as ImageGenerationStateSettingsChangedProgress);
  }

  Map<String, dynamic> toMap() {
    return ImageGenerationStateSettingsChangedProgressMapper.ensureInitialized()
        .encodeMap<ImageGenerationStateSettingsChangedProgress>(
            this as ImageGenerationStateSettingsChangedProgress);
  }

  ImageGenerationStateSettingsChangedProgressCopyWith<
          ImageGenerationStateSettingsChangedProgress,
          ImageGenerationStateSettingsChangedProgress,
          ImageGenerationStateSettingsChangedProgress>
      get copyWith => _ImageGenerationStateSettingsChangedProgressCopyWithImpl(
          this as ImageGenerationStateSettingsChangedProgress,
          $identity,
          $identity);
  @override
  String toString() {
    return ImageGenerationStateSettingsChangedProgressMapper.ensureInitialized()
        .stringifyValue(this as ImageGenerationStateSettingsChangedProgress);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ImageGenerationStateSettingsChangedProgressMapper
                    .ensureInitialized()
                .isValueEqual(
                    this as ImageGenerationStateSettingsChangedProgress,
                    other));
  }

  @override
  int get hashCode {
    return ImageGenerationStateSettingsChangedProgressMapper.ensureInitialized()
        .hashValue(this as ImageGenerationStateSettingsChangedProgress);
  }
}

extension ImageGenerationStateSettingsChangedProgressValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageGenerationStateSettingsChangedProgress, $Out> {
  ImageGenerationStateSettingsChangedProgressCopyWith<
      $R,
      ImageGenerationStateSettingsChangedProgress,
      $Out> get $asImageGenerationStateSettingsChangedProgress => $base.as((v,
          t, t2) =>
      _ImageGenerationStateSettingsChangedProgressCopyWithImpl(v, t, t2));
}

abstract class ImageGenerationStateSettingsChangedProgressCopyWith<
    $R,
    $In extends ImageGenerationStateSettingsChangedProgress,
    $Out> implements ImageGenerationStateCopyWith<$R, $In, $Out> {
  @override
  ImageGenerationSettingsCopyWith<$R, ImageGenerationSettings,
      ImageGenerationSettings> get imageGenerationSettings;
  @override
  ListCopyWith<$R, ImageGeneration,
          ImageGenerationCopyWith<$R, ImageGeneration, ImageGeneration>>
      get imageGenerations;
  @override
  $R call(
      {dynamic stateType,
      ImageGenerationSettings? imageGenerationSettings,
      List<ImageGeneration>? imageGenerations});
  ImageGenerationStateSettingsChangedProgressCopyWith<$R2, $In, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImageGenerationStateSettingsChangedProgressCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageGenerationStateSettingsChangedProgress,
        $Out>
    implements
        ImageGenerationStateSettingsChangedProgressCopyWith<$R,
            ImageGenerationStateSettingsChangedProgress, $Out> {
  _ImageGenerationStateSettingsChangedProgressCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageGenerationStateSettingsChangedProgress>
      $mapper =
      ImageGenerationStateSettingsChangedProgressMapper.ensureInitialized();
  @override
  ImageGenerationSettingsCopyWith<$R, ImageGenerationSettings,
          ImageGenerationSettings>
      get imageGenerationSettings => $value.imageGenerationSettings.copyWith
          .$chain((v) => call(imageGenerationSettings: v));
  @override
  ListCopyWith<$R, ImageGeneration,
          ImageGenerationCopyWith<$R, ImageGeneration, ImageGeneration>>
      get imageGenerations => ListCopyWith($value.imageGenerations,
          (v, t) => v.copyWith.$chain(t), (v) => call(imageGenerations: v));
  @override
  $R call(
          {Object? stateType = $none,
          ImageGenerationSettings? imageGenerationSettings,
          List<ImageGeneration>? imageGenerations}) =>
      $apply(FieldCopyWithData({
        if (stateType != $none) #stateType: stateType,
        if (imageGenerationSettings != null)
          #imageGenerationSettings: imageGenerationSettings,
        if (imageGenerations != null) #imageGenerations: imageGenerations
      }));
  @override
  ImageGenerationStateSettingsChangedProgress $make(CopyWithData data) =>
      ImageGenerationStateSettingsChangedProgress(
          stateType: data.get(#stateType, or: $value.stateType),
          imageGenerationSettings: data.get(#imageGenerationSettings,
              or: $value.imageGenerationSettings),
          imageGenerations:
              data.get(#imageGenerations, or: $value.imageGenerations));

  @override
  ImageGenerationStateSettingsChangedProgressCopyWith<$R2,
      ImageGenerationStateSettingsChangedProgress, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ImageGenerationStateSettingsChangedProgressCopyWithImpl(
          $value, $cast, t);
}

class ImageGenerationStateSettingsChangedSuccessMapper
    extends ClassMapperBase<ImageGenerationStateSettingsChangedSuccess> {
  ImageGenerationStateSettingsChangedSuccessMapper._();

  static ImageGenerationStateSettingsChangedSuccessMapper? _instance;
  static ImageGenerationStateSettingsChangedSuccessMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
          _instance = ImageGenerationStateSettingsChangedSuccessMapper._());
      ImageGenerationStateMapper.ensureInitialized();
      ImageGenerationSettingsMapper.ensureInitialized();
      ImageGenerationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImageGenerationStateSettingsChangedSuccess';

  static String _$stateType(ImageGenerationStateSettingsChangedSuccess v) =>
      v.stateType;
  static dynamic _arg$stateType(f) => f<String>();
  static const Field<ImageGenerationStateSettingsChangedSuccess, dynamic>
      _f$stateType = Field('stateType', _$stateType,
          opt: true,
          def: imageGenerationStateSettingsChangedSuccessType,
          arg: _arg$stateType);
  static ImageGenerationSettings _$imageGenerationSettings(
          ImageGenerationStateSettingsChangedSuccess v) =>
      v.imageGenerationSettings;
  static const Field<ImageGenerationStateSettingsChangedSuccess,
          ImageGenerationSettings> _f$imageGenerationSettings =
      Field('imageGenerationSettings', _$imageGenerationSettings);
  static List<ImageGeneration> _$imageGenerations(
          ImageGenerationStateSettingsChangedSuccess v) =>
      v.imageGenerations;
  static const Field<ImageGenerationStateSettingsChangedSuccess,
          List<ImageGeneration>> _f$imageGenerations =
      Field('imageGenerations', _$imageGenerations);
  static String? _$error(ImageGenerationStateSettingsChangedSuccess v) =>
      v.error;
  static const Field<ImageGenerationStateSettingsChangedSuccess, String>
      _f$error = Field('error', _$error, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<ImageGenerationStateSettingsChangedSuccess, dynamic>>
      fields = const {
    #stateType: _f$stateType,
    #imageGenerationSettings: _f$imageGenerationSettings,
    #imageGenerations: _f$imageGenerations,
    #error: _f$error,
  };

  static ImageGenerationStateSettingsChangedSuccess _instantiate(
      DecodingData data) {
    return ImageGenerationStateSettingsChangedSuccess(
        stateType: data.dec(_f$stateType),
        imageGenerationSettings: data.dec(_f$imageGenerationSettings),
        imageGenerations: data.dec(_f$imageGenerations));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageGenerationStateSettingsChangedSuccess fromMap(
      Map<String, dynamic> map) {
    return ensureInitialized()
        .decodeMap<ImageGenerationStateSettingsChangedSuccess>(map);
  }

  static ImageGenerationStateSettingsChangedSuccess fromJson(String json) {
    return ensureInitialized()
        .decodeJson<ImageGenerationStateSettingsChangedSuccess>(json);
  }
}

mixin ImageGenerationStateSettingsChangedSuccessMappable {
  String toJson() {
    return ImageGenerationStateSettingsChangedSuccessMapper.ensureInitialized()
        .encodeJson<ImageGenerationStateSettingsChangedSuccess>(
            this as ImageGenerationStateSettingsChangedSuccess);
  }

  Map<String, dynamic> toMap() {
    return ImageGenerationStateSettingsChangedSuccessMapper.ensureInitialized()
        .encodeMap<ImageGenerationStateSettingsChangedSuccess>(
            this as ImageGenerationStateSettingsChangedSuccess);
  }

  ImageGenerationStateSettingsChangedSuccessCopyWith<
          ImageGenerationStateSettingsChangedSuccess,
          ImageGenerationStateSettingsChangedSuccess,
          ImageGenerationStateSettingsChangedSuccess>
      get copyWith => _ImageGenerationStateSettingsChangedSuccessCopyWithImpl(
          this as ImageGenerationStateSettingsChangedSuccess,
          $identity,
          $identity);
  @override
  String toString() {
    return ImageGenerationStateSettingsChangedSuccessMapper.ensureInitialized()
        .stringifyValue(this as ImageGenerationStateSettingsChangedSuccess);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ImageGenerationStateSettingsChangedSuccessMapper.ensureInitialized()
                .isValueEqual(
                    this as ImageGenerationStateSettingsChangedSuccess, other));
  }

  @override
  int get hashCode {
    return ImageGenerationStateSettingsChangedSuccessMapper.ensureInitialized()
        .hashValue(this as ImageGenerationStateSettingsChangedSuccess);
  }
}

extension ImageGenerationStateSettingsChangedSuccessValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageGenerationStateSettingsChangedSuccess, $Out> {
  ImageGenerationStateSettingsChangedSuccessCopyWith<
      $R,
      ImageGenerationStateSettingsChangedSuccess,
      $Out> get $asImageGenerationStateSettingsChangedSuccess => $base.as((v, t,
          t2) =>
      _ImageGenerationStateSettingsChangedSuccessCopyWithImpl(v, t, t2));
}

abstract class ImageGenerationStateSettingsChangedSuccessCopyWith<
    $R,
    $In extends ImageGenerationStateSettingsChangedSuccess,
    $Out> implements ImageGenerationStateCopyWith<$R, $In, $Out> {
  @override
  ImageGenerationSettingsCopyWith<$R, ImageGenerationSettings,
      ImageGenerationSettings> get imageGenerationSettings;
  @override
  ListCopyWith<$R, ImageGeneration,
          ImageGenerationCopyWith<$R, ImageGeneration, ImageGeneration>>
      get imageGenerations;
  @override
  $R call(
      {dynamic stateType,
      ImageGenerationSettings? imageGenerationSettings,
      List<ImageGeneration>? imageGenerations});
  ImageGenerationStateSettingsChangedSuccessCopyWith<$R2, $In, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImageGenerationStateSettingsChangedSuccessCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageGenerationStateSettingsChangedSuccess,
        $Out>
    implements
        ImageGenerationStateSettingsChangedSuccessCopyWith<$R,
            ImageGenerationStateSettingsChangedSuccess, $Out> {
  _ImageGenerationStateSettingsChangedSuccessCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageGenerationStateSettingsChangedSuccess>
      $mapper =
      ImageGenerationStateSettingsChangedSuccessMapper.ensureInitialized();
  @override
  ImageGenerationSettingsCopyWith<$R, ImageGenerationSettings,
          ImageGenerationSettings>
      get imageGenerationSettings => $value.imageGenerationSettings.copyWith
          .$chain((v) => call(imageGenerationSettings: v));
  @override
  ListCopyWith<$R, ImageGeneration,
          ImageGenerationCopyWith<$R, ImageGeneration, ImageGeneration>>
      get imageGenerations => ListCopyWith($value.imageGenerations,
          (v, t) => v.copyWith.$chain(t), (v) => call(imageGenerations: v));
  @override
  $R call(
          {Object? stateType = $none,
          ImageGenerationSettings? imageGenerationSettings,
          List<ImageGeneration>? imageGenerations}) =>
      $apply(FieldCopyWithData({
        if (stateType != $none) #stateType: stateType,
        if (imageGenerationSettings != null)
          #imageGenerationSettings: imageGenerationSettings,
        if (imageGenerations != null) #imageGenerations: imageGenerations
      }));
  @override
  ImageGenerationStateSettingsChangedSuccess $make(CopyWithData data) =>
      ImageGenerationStateSettingsChangedSuccess(
          stateType: data.get(#stateType, or: $value.stateType),
          imageGenerationSettings: data.get(#imageGenerationSettings,
              or: $value.imageGenerationSettings),
          imageGenerations:
              data.get(#imageGenerations, or: $value.imageGenerations));

  @override
  ImageGenerationStateSettingsChangedSuccessCopyWith<$R2,
      ImageGenerationStateSettingsChangedSuccess, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ImageGenerationStateSettingsChangedSuccessCopyWithImpl($value, $cast, t);
}

class ImageGenerationStateSettingsChangedFailureMapper
    extends ClassMapperBase<ImageGenerationStateSettingsChangedFailure> {
  ImageGenerationStateSettingsChangedFailureMapper._();

  static ImageGenerationStateSettingsChangedFailureMapper? _instance;
  static ImageGenerationStateSettingsChangedFailureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
          _instance = ImageGenerationStateSettingsChangedFailureMapper._());
      ImageGenerationStateMapper.ensureInitialized();
      ImageGenerationSettingsMapper.ensureInitialized();
      ImageGenerationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImageGenerationStateSettingsChangedFailure';

  static String _$stateType(ImageGenerationStateSettingsChangedFailure v) =>
      v.stateType;
  static dynamic _arg$stateType(f) => f<String>();
  static const Field<ImageGenerationStateSettingsChangedFailure, dynamic>
      _f$stateType = Field('stateType', _$stateType,
          opt: true,
          def: imageGenerationStateSettingsChangedFailureType,
          arg: _arg$stateType);
  static ImageGenerationSettings _$imageGenerationSettings(
          ImageGenerationStateSettingsChangedFailure v) =>
      v.imageGenerationSettings;
  static const Field<ImageGenerationStateSettingsChangedFailure,
          ImageGenerationSettings> _f$imageGenerationSettings =
      Field('imageGenerationSettings', _$imageGenerationSettings);
  static List<ImageGeneration> _$imageGenerations(
          ImageGenerationStateSettingsChangedFailure v) =>
      v.imageGenerations;
  static const Field<ImageGenerationStateSettingsChangedFailure,
          List<ImageGeneration>> _f$imageGenerations =
      Field('imageGenerations', _$imageGenerations);
  static String? _$error(ImageGenerationStateSettingsChangedFailure v) =>
      v.error;
  static const Field<ImageGenerationStateSettingsChangedFailure, String>
      _f$error = Field('error', _$error, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<ImageGenerationStateSettingsChangedFailure, dynamic>>
      fields = const {
    #stateType: _f$stateType,
    #imageGenerationSettings: _f$imageGenerationSettings,
    #imageGenerations: _f$imageGenerations,
    #error: _f$error,
  };

  static ImageGenerationStateSettingsChangedFailure _instantiate(
      DecodingData data) {
    return ImageGenerationStateSettingsChangedFailure(
        stateType: data.dec(_f$stateType),
        imageGenerationSettings: data.dec(_f$imageGenerationSettings),
        imageGenerations: data.dec(_f$imageGenerations));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageGenerationStateSettingsChangedFailure fromMap(
      Map<String, dynamic> map) {
    return ensureInitialized()
        .decodeMap<ImageGenerationStateSettingsChangedFailure>(map);
  }

  static ImageGenerationStateSettingsChangedFailure fromJson(String json) {
    return ensureInitialized()
        .decodeJson<ImageGenerationStateSettingsChangedFailure>(json);
  }
}

mixin ImageGenerationStateSettingsChangedFailureMappable {
  String toJson() {
    return ImageGenerationStateSettingsChangedFailureMapper.ensureInitialized()
        .encodeJson<ImageGenerationStateSettingsChangedFailure>(
            this as ImageGenerationStateSettingsChangedFailure);
  }

  Map<String, dynamic> toMap() {
    return ImageGenerationStateSettingsChangedFailureMapper.ensureInitialized()
        .encodeMap<ImageGenerationStateSettingsChangedFailure>(
            this as ImageGenerationStateSettingsChangedFailure);
  }

  ImageGenerationStateSettingsChangedFailureCopyWith<
          ImageGenerationStateSettingsChangedFailure,
          ImageGenerationStateSettingsChangedFailure,
          ImageGenerationStateSettingsChangedFailure>
      get copyWith => _ImageGenerationStateSettingsChangedFailureCopyWithImpl(
          this as ImageGenerationStateSettingsChangedFailure,
          $identity,
          $identity);
  @override
  String toString() {
    return ImageGenerationStateSettingsChangedFailureMapper.ensureInitialized()
        .stringifyValue(this as ImageGenerationStateSettingsChangedFailure);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ImageGenerationStateSettingsChangedFailureMapper.ensureInitialized()
                .isValueEqual(
                    this as ImageGenerationStateSettingsChangedFailure, other));
  }

  @override
  int get hashCode {
    return ImageGenerationStateSettingsChangedFailureMapper.ensureInitialized()
        .hashValue(this as ImageGenerationStateSettingsChangedFailure);
  }
}

extension ImageGenerationStateSettingsChangedFailureValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageGenerationStateSettingsChangedFailure, $Out> {
  ImageGenerationStateSettingsChangedFailureCopyWith<
      $R,
      ImageGenerationStateSettingsChangedFailure,
      $Out> get $asImageGenerationStateSettingsChangedFailure => $base.as((v, t,
          t2) =>
      _ImageGenerationStateSettingsChangedFailureCopyWithImpl(v, t, t2));
}

abstract class ImageGenerationStateSettingsChangedFailureCopyWith<
    $R,
    $In extends ImageGenerationStateSettingsChangedFailure,
    $Out> implements ImageGenerationStateCopyWith<$R, $In, $Out> {
  @override
  ImageGenerationSettingsCopyWith<$R, ImageGenerationSettings,
      ImageGenerationSettings> get imageGenerationSettings;
  @override
  ListCopyWith<$R, ImageGeneration,
          ImageGenerationCopyWith<$R, ImageGeneration, ImageGeneration>>
      get imageGenerations;
  @override
  $R call(
      {dynamic stateType,
      ImageGenerationSettings? imageGenerationSettings,
      List<ImageGeneration>? imageGenerations});
  ImageGenerationStateSettingsChangedFailureCopyWith<$R2, $In, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImageGenerationStateSettingsChangedFailureCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageGenerationStateSettingsChangedFailure,
        $Out>
    implements
        ImageGenerationStateSettingsChangedFailureCopyWith<$R,
            ImageGenerationStateSettingsChangedFailure, $Out> {
  _ImageGenerationStateSettingsChangedFailureCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageGenerationStateSettingsChangedFailure>
      $mapper =
      ImageGenerationStateSettingsChangedFailureMapper.ensureInitialized();
  @override
  ImageGenerationSettingsCopyWith<$R, ImageGenerationSettings,
          ImageGenerationSettings>
      get imageGenerationSettings => $value.imageGenerationSettings.copyWith
          .$chain((v) => call(imageGenerationSettings: v));
  @override
  ListCopyWith<$R, ImageGeneration,
          ImageGenerationCopyWith<$R, ImageGeneration, ImageGeneration>>
      get imageGenerations => ListCopyWith($value.imageGenerations,
          (v, t) => v.copyWith.$chain(t), (v) => call(imageGenerations: v));
  @override
  $R call(
          {Object? stateType = $none,
          ImageGenerationSettings? imageGenerationSettings,
          List<ImageGeneration>? imageGenerations}) =>
      $apply(FieldCopyWithData({
        if (stateType != $none) #stateType: stateType,
        if (imageGenerationSettings != null)
          #imageGenerationSettings: imageGenerationSettings,
        if (imageGenerations != null) #imageGenerations: imageGenerations
      }));
  @override
  ImageGenerationStateSettingsChangedFailure $make(CopyWithData data) =>
      ImageGenerationStateSettingsChangedFailure(
          stateType: data.get(#stateType, or: $value.stateType),
          imageGenerationSettings: data.get(#imageGenerationSettings,
              or: $value.imageGenerationSettings),
          imageGenerations:
              data.get(#imageGenerations, or: $value.imageGenerations));

  @override
  ImageGenerationStateSettingsChangedFailureCopyWith<$R2,
      ImageGenerationStateSettingsChangedFailure, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ImageGenerationStateSettingsChangedFailureCopyWithImpl($value, $cast, t);
}
