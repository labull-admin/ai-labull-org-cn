// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'gallery_state.dart';

class GalleryStateMapper extends ClassMapperBase<GalleryState> {
  GalleryStateMapper._();

  static GalleryStateMapper? _instance;
  static GalleryStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GalleryStateMapper._());
      GalleryStateInitialMapper.ensureInitialized();
      GalleryStateLoadImagesInitialMapper.ensureInitialized();
      GalleryStateLoadImagesProgressMapper.ensureInitialized();
      GalleryStateLoadImagesSuccessMapper.ensureInitialized();
      GalleryStateLoadImagesFailureMapper.ensureInitialized();
      ImageGenerationMapper.ensureInitialized();
      ImageVariationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GalleryState';

  static String _$stateType(GalleryState v) => v.stateType;
  static const Field<GalleryState, String> _f$stateType =
      Field('stateType', _$stateType);
  static List<ImageGeneration> _$imageGeneration(GalleryState v) =>
      v.imageGeneration;
  static const Field<GalleryState, List<ImageGeneration>> _f$imageGeneration =
      Field('imageGeneration', _$imageGeneration);
  static List<ImageVariation> _$imageVariation(GalleryState v) =>
      v.imageVariation;
  static const Field<GalleryState, List<ImageVariation>> _f$imageVariation =
      Field('imageVariation', _$imageVariation);
  static String? _$error(GalleryState v) => v.error;
  static const Field<GalleryState, String> _f$error =
      Field('error', _$error, opt: true);

  @override
  final Map<Symbol, Field<GalleryState, dynamic>> fields = const {
    #stateType: _f$stateType,
    #imageGeneration: _f$imageGeneration,
    #imageVariation: _f$imageVariation,
    #error: _f$error,
  };

  static GalleryState _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('GalleryState');
  }

  @override
  final Function instantiate = _instantiate;

  static GalleryState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GalleryState>(map);
  }

  static GalleryState fromJson(String json) {
    return ensureInitialized().decodeJson<GalleryState>(json);
  }
}

mixin GalleryStateMappable {
  String toJson();
  Map<String, dynamic> toMap();
  GalleryStateCopyWith<GalleryState, GalleryState, GalleryState> get copyWith;
}

abstract class GalleryStateCopyWith<$R, $In extends GalleryState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? stateType});
  GalleryStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class GalleryStateInitialMapper extends ClassMapperBase<GalleryStateInitial> {
  GalleryStateInitialMapper._();

  static GalleryStateInitialMapper? _instance;
  static GalleryStateInitialMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GalleryStateInitialMapper._());
      GalleryStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GalleryStateInitial';

  static String _$stateType(GalleryStateInitial v) => v.stateType;
  static const Field<GalleryStateInitial, String> _f$stateType =
      Field('stateType', _$stateType, opt: true, def: galleryStateInitialType);
  static List<ImageGeneration> _$imageGeneration(GalleryStateInitial v) =>
      v.imageGeneration;
  static const Field<GalleryStateInitial, List<ImageGeneration>>
      _f$imageGeneration =
      Field('imageGeneration', _$imageGeneration, mode: FieldMode.member);
  static List<ImageVariation> _$imageVariation(GalleryStateInitial v) =>
      v.imageVariation;
  static const Field<GalleryStateInitial, List<ImageVariation>>
      _f$imageVariation =
      Field('imageVariation', _$imageVariation, mode: FieldMode.member);
  static String? _$error(GalleryStateInitial v) => v.error;
  static const Field<GalleryStateInitial, String> _f$error =
      Field('error', _$error, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<GalleryStateInitial, dynamic>> fields = const {
    #stateType: _f$stateType,
    #imageGeneration: _f$imageGeneration,
    #imageVariation: _f$imageVariation,
    #error: _f$error,
  };

  static GalleryStateInitial _instantiate(DecodingData data) {
    return GalleryStateInitial(stateType: data.dec(_f$stateType));
  }

  @override
  final Function instantiate = _instantiate;

  static GalleryStateInitial fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GalleryStateInitial>(map);
  }

  static GalleryStateInitial fromJson(String json) {
    return ensureInitialized().decodeJson<GalleryStateInitial>(json);
  }
}

mixin GalleryStateInitialMappable {
  String toJson() {
    return GalleryStateInitialMapper.ensureInitialized()
        .encodeJson<GalleryStateInitial>(this as GalleryStateInitial);
  }

  Map<String, dynamic> toMap() {
    return GalleryStateInitialMapper.ensureInitialized()
        .encodeMap<GalleryStateInitial>(this as GalleryStateInitial);
  }

  GalleryStateInitialCopyWith<GalleryStateInitial, GalleryStateInitial,
          GalleryStateInitial>
      get copyWith => _GalleryStateInitialCopyWithImpl(
          this as GalleryStateInitial, $identity, $identity);
  @override
  String toString() {
    return GalleryStateInitialMapper.ensureInitialized()
        .stringifyValue(this as GalleryStateInitial);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            GalleryStateInitialMapper.ensureInitialized()
                .isValueEqual(this as GalleryStateInitial, other));
  }

  @override
  int get hashCode {
    return GalleryStateInitialMapper.ensureInitialized()
        .hashValue(this as GalleryStateInitial);
  }
}

extension GalleryStateInitialValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GalleryStateInitial, $Out> {
  GalleryStateInitialCopyWith<$R, GalleryStateInitial, $Out>
      get $asGalleryStateInitial =>
          $base.as((v, t, t2) => _GalleryStateInitialCopyWithImpl(v, t, t2));
}

abstract class GalleryStateInitialCopyWith<$R, $In extends GalleryStateInitial,
    $Out> implements GalleryStateCopyWith<$R, $In, $Out> {
  @override
  $R call({String? stateType});
  GalleryStateInitialCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _GalleryStateInitialCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GalleryStateInitial, $Out>
    implements GalleryStateInitialCopyWith<$R, GalleryStateInitial, $Out> {
  _GalleryStateInitialCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GalleryStateInitial> $mapper =
      GalleryStateInitialMapper.ensureInitialized();
  @override
  $R call({String? stateType}) =>
      $apply(FieldCopyWithData({if (stateType != null) #stateType: stateType}));
  @override
  GalleryStateInitial $make(CopyWithData data) => GalleryStateInitial(
      stateType: data.get(#stateType, or: $value.stateType));

  @override
  GalleryStateInitialCopyWith<$R2, GalleryStateInitial, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _GalleryStateInitialCopyWithImpl($value, $cast, t);
}

class GalleryStateLoadImagesInitialMapper
    extends ClassMapperBase<GalleryStateLoadImagesInitial> {
  GalleryStateLoadImagesInitialMapper._();

  static GalleryStateLoadImagesInitialMapper? _instance;
  static GalleryStateLoadImagesInitialMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = GalleryStateLoadImagesInitialMapper._());
      GalleryStateMapper.ensureInitialized();
      ImageGenerationMapper.ensureInitialized();
      ImageVariationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GalleryStateLoadImagesInitial';

  static String _$stateType(GalleryStateLoadImagesInitial v) => v.stateType;
  static const Field<GalleryStateLoadImagesInitial, String> _f$stateType =
      Field('stateType', _$stateType,
          opt: true, def: galleryStateLoadImagesInitialType);
  static List<ImageGeneration> _$imageGeneration(
          GalleryStateLoadImagesInitial v) =>
      v.imageGeneration;
  static const Field<GalleryStateLoadImagesInitial, List<ImageGeneration>>
      _f$imageGeneration = Field('imageGeneration', _$imageGeneration);
  static List<ImageVariation> _$imageVariation(
          GalleryStateLoadImagesInitial v) =>
      v.imageVariation;
  static const Field<GalleryStateLoadImagesInitial, List<ImageVariation>>
      _f$imageVariation = Field('imageVariation', _$imageVariation);
  static String? _$error(GalleryStateLoadImagesInitial v) => v.error;
  static const Field<GalleryStateLoadImagesInitial, String> _f$error =
      Field('error', _$error, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<GalleryStateLoadImagesInitial, dynamic>> fields =
      const {
    #stateType: _f$stateType,
    #imageGeneration: _f$imageGeneration,
    #imageVariation: _f$imageVariation,
    #error: _f$error,
  };

  static GalleryStateLoadImagesInitial _instantiate(DecodingData data) {
    return GalleryStateLoadImagesInitial(
        stateType: data.dec(_f$stateType),
        imageGeneration: data.dec(_f$imageGeneration),
        imageVariation: data.dec(_f$imageVariation));
  }

  @override
  final Function instantiate = _instantiate;

  static GalleryStateLoadImagesInitial fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GalleryStateLoadImagesInitial>(map);
  }

  static GalleryStateLoadImagesInitial fromJson(String json) {
    return ensureInitialized().decodeJson<GalleryStateLoadImagesInitial>(json);
  }
}

mixin GalleryStateLoadImagesInitialMappable {
  String toJson() {
    return GalleryStateLoadImagesInitialMapper.ensureInitialized()
        .encodeJson<GalleryStateLoadImagesInitial>(
            this as GalleryStateLoadImagesInitial);
  }

  Map<String, dynamic> toMap() {
    return GalleryStateLoadImagesInitialMapper.ensureInitialized()
        .encodeMap<GalleryStateLoadImagesInitial>(
            this as GalleryStateLoadImagesInitial);
  }

  GalleryStateLoadImagesInitialCopyWith<GalleryStateLoadImagesInitial,
          GalleryStateLoadImagesInitial, GalleryStateLoadImagesInitial>
      get copyWith => _GalleryStateLoadImagesInitialCopyWithImpl(
          this as GalleryStateLoadImagesInitial, $identity, $identity);
  @override
  String toString() {
    return GalleryStateLoadImagesInitialMapper.ensureInitialized()
        .stringifyValue(this as GalleryStateLoadImagesInitial);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            GalleryStateLoadImagesInitialMapper.ensureInitialized()
                .isValueEqual(this as GalleryStateLoadImagesInitial, other));
  }

  @override
  int get hashCode {
    return GalleryStateLoadImagesInitialMapper.ensureInitialized()
        .hashValue(this as GalleryStateLoadImagesInitial);
  }
}

extension GalleryStateLoadImagesInitialValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GalleryStateLoadImagesInitial, $Out> {
  GalleryStateLoadImagesInitialCopyWith<$R, GalleryStateLoadImagesInitial, $Out>
      get $asGalleryStateLoadImagesInitial => $base.as(
          (v, t, t2) => _GalleryStateLoadImagesInitialCopyWithImpl(v, t, t2));
}

abstract class GalleryStateLoadImagesInitialCopyWith<
    $R,
    $In extends GalleryStateLoadImagesInitial,
    $Out> implements GalleryStateCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, ImageGeneration,
          ImageGenerationCopyWith<$R, ImageGeneration, ImageGeneration>>
      get imageGeneration;
  @override
  ListCopyWith<$R, ImageVariation,
          ImageVariationCopyWith<$R, ImageVariation, ImageVariation>>
      get imageVariation;
  @override
  $R call(
      {String? stateType,
      List<ImageGeneration>? imageGeneration,
      List<ImageVariation>? imageVariation});
  GalleryStateLoadImagesInitialCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _GalleryStateLoadImagesInitialCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GalleryStateLoadImagesInitial, $Out>
    implements
        GalleryStateLoadImagesInitialCopyWith<$R, GalleryStateLoadImagesInitial,
            $Out> {
  _GalleryStateLoadImagesInitialCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GalleryStateLoadImagesInitial> $mapper =
      GalleryStateLoadImagesInitialMapper.ensureInitialized();
  @override
  ListCopyWith<$R, ImageGeneration,
          ImageGenerationCopyWith<$R, ImageGeneration, ImageGeneration>>
      get imageGeneration => ListCopyWith($value.imageGeneration,
          (v, t) => v.copyWith.$chain(t), (v) => call(imageGeneration: v));
  @override
  ListCopyWith<$R, ImageVariation,
          ImageVariationCopyWith<$R, ImageVariation, ImageVariation>>
      get imageVariation => ListCopyWith($value.imageVariation,
          (v, t) => v.copyWith.$chain(t), (v) => call(imageVariation: v));
  @override
  $R call(
          {String? stateType,
          List<ImageGeneration>? imageGeneration,
          List<ImageVariation>? imageVariation}) =>
      $apply(FieldCopyWithData({
        if (stateType != null) #stateType: stateType,
        if (imageGeneration != null) #imageGeneration: imageGeneration,
        if (imageVariation != null) #imageVariation: imageVariation
      }));
  @override
  GalleryStateLoadImagesInitial $make(CopyWithData data) =>
      GalleryStateLoadImagesInitial(
          stateType: data.get(#stateType, or: $value.stateType),
          imageGeneration:
              data.get(#imageGeneration, or: $value.imageGeneration),
          imageVariation: data.get(#imageVariation, or: $value.imageVariation));

  @override
  GalleryStateLoadImagesInitialCopyWith<$R2, GalleryStateLoadImagesInitial,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GalleryStateLoadImagesInitialCopyWithImpl($value, $cast, t);
}

class GalleryStateLoadImagesProgressMapper
    extends ClassMapperBase<GalleryStateLoadImagesProgress> {
  GalleryStateLoadImagesProgressMapper._();

  static GalleryStateLoadImagesProgressMapper? _instance;
  static GalleryStateLoadImagesProgressMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = GalleryStateLoadImagesProgressMapper._());
      GalleryStateMapper.ensureInitialized();
      ImageGenerationMapper.ensureInitialized();
      ImageVariationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GalleryStateLoadImagesProgress';

  static String _$stateType(GalleryStateLoadImagesProgress v) => v.stateType;
  static const Field<GalleryStateLoadImagesProgress, String> _f$stateType =
      Field('stateType', _$stateType,
          opt: true, def: galleryStateLoadImagesProgressType);
  static List<ImageGeneration> _$imageGeneration(
          GalleryStateLoadImagesProgress v) =>
      v.imageGeneration;
  static const Field<GalleryStateLoadImagesProgress, List<ImageGeneration>>
      _f$imageGeneration = Field('imageGeneration', _$imageGeneration);
  static List<ImageVariation> _$imageVariation(
          GalleryStateLoadImagesProgress v) =>
      v.imageVariation;
  static const Field<GalleryStateLoadImagesProgress, List<ImageVariation>>
      _f$imageVariation = Field('imageVariation', _$imageVariation);
  static String? _$error(GalleryStateLoadImagesProgress v) => v.error;
  static const Field<GalleryStateLoadImagesProgress, String> _f$error =
      Field('error', _$error, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<GalleryStateLoadImagesProgress, dynamic>> fields =
      const {
    #stateType: _f$stateType,
    #imageGeneration: _f$imageGeneration,
    #imageVariation: _f$imageVariation,
    #error: _f$error,
  };

  static GalleryStateLoadImagesProgress _instantiate(DecodingData data) {
    return GalleryStateLoadImagesProgress(
        stateType: data.dec(_f$stateType),
        imageGeneration: data.dec(_f$imageGeneration),
        imageVariation: data.dec(_f$imageVariation));
  }

  @override
  final Function instantiate = _instantiate;

  static GalleryStateLoadImagesProgress fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GalleryStateLoadImagesProgress>(map);
  }

  static GalleryStateLoadImagesProgress fromJson(String json) {
    return ensureInitialized().decodeJson<GalleryStateLoadImagesProgress>(json);
  }
}

mixin GalleryStateLoadImagesProgressMappable {
  String toJson() {
    return GalleryStateLoadImagesProgressMapper.ensureInitialized()
        .encodeJson<GalleryStateLoadImagesProgress>(
            this as GalleryStateLoadImagesProgress);
  }

  Map<String, dynamic> toMap() {
    return GalleryStateLoadImagesProgressMapper.ensureInitialized()
        .encodeMap<GalleryStateLoadImagesProgress>(
            this as GalleryStateLoadImagesProgress);
  }

  GalleryStateLoadImagesProgressCopyWith<GalleryStateLoadImagesProgress,
          GalleryStateLoadImagesProgress, GalleryStateLoadImagesProgress>
      get copyWith => _GalleryStateLoadImagesProgressCopyWithImpl(
          this as GalleryStateLoadImagesProgress, $identity, $identity);
  @override
  String toString() {
    return GalleryStateLoadImagesProgressMapper.ensureInitialized()
        .stringifyValue(this as GalleryStateLoadImagesProgress);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            GalleryStateLoadImagesProgressMapper.ensureInitialized()
                .isValueEqual(this as GalleryStateLoadImagesProgress, other));
  }

  @override
  int get hashCode {
    return GalleryStateLoadImagesProgressMapper.ensureInitialized()
        .hashValue(this as GalleryStateLoadImagesProgress);
  }
}

extension GalleryStateLoadImagesProgressValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GalleryStateLoadImagesProgress, $Out> {
  GalleryStateLoadImagesProgressCopyWith<$R, GalleryStateLoadImagesProgress,
          $Out>
      get $asGalleryStateLoadImagesProgress => $base.as(
          (v, t, t2) => _GalleryStateLoadImagesProgressCopyWithImpl(v, t, t2));
}

abstract class GalleryStateLoadImagesProgressCopyWith<
    $R,
    $In extends GalleryStateLoadImagesProgress,
    $Out> implements GalleryStateCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, ImageGeneration,
          ImageGenerationCopyWith<$R, ImageGeneration, ImageGeneration>>
      get imageGeneration;
  @override
  ListCopyWith<$R, ImageVariation,
          ImageVariationCopyWith<$R, ImageVariation, ImageVariation>>
      get imageVariation;
  @override
  $R call(
      {String? stateType,
      List<ImageGeneration>? imageGeneration,
      List<ImageVariation>? imageVariation});
  GalleryStateLoadImagesProgressCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _GalleryStateLoadImagesProgressCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GalleryStateLoadImagesProgress, $Out>
    implements
        GalleryStateLoadImagesProgressCopyWith<$R,
            GalleryStateLoadImagesProgress, $Out> {
  _GalleryStateLoadImagesProgressCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GalleryStateLoadImagesProgress> $mapper =
      GalleryStateLoadImagesProgressMapper.ensureInitialized();
  @override
  ListCopyWith<$R, ImageGeneration,
          ImageGenerationCopyWith<$R, ImageGeneration, ImageGeneration>>
      get imageGeneration => ListCopyWith($value.imageGeneration,
          (v, t) => v.copyWith.$chain(t), (v) => call(imageGeneration: v));
  @override
  ListCopyWith<$R, ImageVariation,
          ImageVariationCopyWith<$R, ImageVariation, ImageVariation>>
      get imageVariation => ListCopyWith($value.imageVariation,
          (v, t) => v.copyWith.$chain(t), (v) => call(imageVariation: v));
  @override
  $R call(
          {String? stateType,
          List<ImageGeneration>? imageGeneration,
          List<ImageVariation>? imageVariation}) =>
      $apply(FieldCopyWithData({
        if (stateType != null) #stateType: stateType,
        if (imageGeneration != null) #imageGeneration: imageGeneration,
        if (imageVariation != null) #imageVariation: imageVariation
      }));
  @override
  GalleryStateLoadImagesProgress $make(CopyWithData data) =>
      GalleryStateLoadImagesProgress(
          stateType: data.get(#stateType, or: $value.stateType),
          imageGeneration:
              data.get(#imageGeneration, or: $value.imageGeneration),
          imageVariation: data.get(#imageVariation, or: $value.imageVariation));

  @override
  GalleryStateLoadImagesProgressCopyWith<$R2, GalleryStateLoadImagesProgress,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GalleryStateLoadImagesProgressCopyWithImpl($value, $cast, t);
}

class GalleryStateLoadImagesSuccessMapper
    extends ClassMapperBase<GalleryStateLoadImagesSuccess> {
  GalleryStateLoadImagesSuccessMapper._();

  static GalleryStateLoadImagesSuccessMapper? _instance;
  static GalleryStateLoadImagesSuccessMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = GalleryStateLoadImagesSuccessMapper._());
      GalleryStateMapper.ensureInitialized();
      ImageGenerationMapper.ensureInitialized();
      ImageVariationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GalleryStateLoadImagesSuccess';

  static String _$stateType(GalleryStateLoadImagesSuccess v) => v.stateType;
  static const Field<GalleryStateLoadImagesSuccess, String> _f$stateType =
      Field('stateType', _$stateType,
          opt: true, def: galleryStateLoadImagesSuccessType);
  static List<ImageGeneration> _$imageGeneration(
          GalleryStateLoadImagesSuccess v) =>
      v.imageGeneration;
  static const Field<GalleryStateLoadImagesSuccess, List<ImageGeneration>>
      _f$imageGeneration = Field('imageGeneration', _$imageGeneration);
  static List<ImageVariation> _$imageVariation(
          GalleryStateLoadImagesSuccess v) =>
      v.imageVariation;
  static const Field<GalleryStateLoadImagesSuccess, List<ImageVariation>>
      _f$imageVariation = Field('imageVariation', _$imageVariation);
  static String? _$error(GalleryStateLoadImagesSuccess v) => v.error;
  static const Field<GalleryStateLoadImagesSuccess, String> _f$error =
      Field('error', _$error, mode: FieldMode.member);

  @override
  final Map<Symbol, Field<GalleryStateLoadImagesSuccess, dynamic>> fields =
      const {
    #stateType: _f$stateType,
    #imageGeneration: _f$imageGeneration,
    #imageVariation: _f$imageVariation,
    #error: _f$error,
  };

  static GalleryStateLoadImagesSuccess _instantiate(DecodingData data) {
    return GalleryStateLoadImagesSuccess(
        stateType: data.dec(_f$stateType),
        imageGeneration: data.dec(_f$imageGeneration),
        imageVariation: data.dec(_f$imageVariation));
  }

  @override
  final Function instantiate = _instantiate;

  static GalleryStateLoadImagesSuccess fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GalleryStateLoadImagesSuccess>(map);
  }

  static GalleryStateLoadImagesSuccess fromJson(String json) {
    return ensureInitialized().decodeJson<GalleryStateLoadImagesSuccess>(json);
  }
}

mixin GalleryStateLoadImagesSuccessMappable {
  String toJson() {
    return GalleryStateLoadImagesSuccessMapper.ensureInitialized()
        .encodeJson<GalleryStateLoadImagesSuccess>(
            this as GalleryStateLoadImagesSuccess);
  }

  Map<String, dynamic> toMap() {
    return GalleryStateLoadImagesSuccessMapper.ensureInitialized()
        .encodeMap<GalleryStateLoadImagesSuccess>(
            this as GalleryStateLoadImagesSuccess);
  }

  GalleryStateLoadImagesSuccessCopyWith<GalleryStateLoadImagesSuccess,
          GalleryStateLoadImagesSuccess, GalleryStateLoadImagesSuccess>
      get copyWith => _GalleryStateLoadImagesSuccessCopyWithImpl(
          this as GalleryStateLoadImagesSuccess, $identity, $identity);
  @override
  String toString() {
    return GalleryStateLoadImagesSuccessMapper.ensureInitialized()
        .stringifyValue(this as GalleryStateLoadImagesSuccess);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            GalleryStateLoadImagesSuccessMapper.ensureInitialized()
                .isValueEqual(this as GalleryStateLoadImagesSuccess, other));
  }

  @override
  int get hashCode {
    return GalleryStateLoadImagesSuccessMapper.ensureInitialized()
        .hashValue(this as GalleryStateLoadImagesSuccess);
  }
}

extension GalleryStateLoadImagesSuccessValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GalleryStateLoadImagesSuccess, $Out> {
  GalleryStateLoadImagesSuccessCopyWith<$R, GalleryStateLoadImagesSuccess, $Out>
      get $asGalleryStateLoadImagesSuccess => $base.as(
          (v, t, t2) => _GalleryStateLoadImagesSuccessCopyWithImpl(v, t, t2));
}

abstract class GalleryStateLoadImagesSuccessCopyWith<
    $R,
    $In extends GalleryStateLoadImagesSuccess,
    $Out> implements GalleryStateCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, ImageGeneration,
          ImageGenerationCopyWith<$R, ImageGeneration, ImageGeneration>>
      get imageGeneration;
  @override
  ListCopyWith<$R, ImageVariation,
          ImageVariationCopyWith<$R, ImageVariation, ImageVariation>>
      get imageVariation;
  @override
  $R call(
      {String? stateType,
      List<ImageGeneration>? imageGeneration,
      List<ImageVariation>? imageVariation});
  GalleryStateLoadImagesSuccessCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _GalleryStateLoadImagesSuccessCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GalleryStateLoadImagesSuccess, $Out>
    implements
        GalleryStateLoadImagesSuccessCopyWith<$R, GalleryStateLoadImagesSuccess,
            $Out> {
  _GalleryStateLoadImagesSuccessCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GalleryStateLoadImagesSuccess> $mapper =
      GalleryStateLoadImagesSuccessMapper.ensureInitialized();
  @override
  ListCopyWith<$R, ImageGeneration,
          ImageGenerationCopyWith<$R, ImageGeneration, ImageGeneration>>
      get imageGeneration => ListCopyWith($value.imageGeneration,
          (v, t) => v.copyWith.$chain(t), (v) => call(imageGeneration: v));
  @override
  ListCopyWith<$R, ImageVariation,
          ImageVariationCopyWith<$R, ImageVariation, ImageVariation>>
      get imageVariation => ListCopyWith($value.imageVariation,
          (v, t) => v.copyWith.$chain(t), (v) => call(imageVariation: v));
  @override
  $R call(
          {String? stateType,
          List<ImageGeneration>? imageGeneration,
          List<ImageVariation>? imageVariation}) =>
      $apply(FieldCopyWithData({
        if (stateType != null) #stateType: stateType,
        if (imageGeneration != null) #imageGeneration: imageGeneration,
        if (imageVariation != null) #imageVariation: imageVariation
      }));
  @override
  GalleryStateLoadImagesSuccess $make(CopyWithData data) =>
      GalleryStateLoadImagesSuccess(
          stateType: data.get(#stateType, or: $value.stateType),
          imageGeneration:
              data.get(#imageGeneration, or: $value.imageGeneration),
          imageVariation: data.get(#imageVariation, or: $value.imageVariation));

  @override
  GalleryStateLoadImagesSuccessCopyWith<$R2, GalleryStateLoadImagesSuccess,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GalleryStateLoadImagesSuccessCopyWithImpl($value, $cast, t);
}

class GalleryStateLoadImagesFailureMapper
    extends ClassMapperBase<GalleryStateLoadImagesFailure> {
  GalleryStateLoadImagesFailureMapper._();

  static GalleryStateLoadImagesFailureMapper? _instance;
  static GalleryStateLoadImagesFailureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = GalleryStateLoadImagesFailureMapper._());
      GalleryStateMapper.ensureInitialized();
      ImageGenerationMapper.ensureInitialized();
      ImageVariationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GalleryStateLoadImagesFailure';

  static String _$stateType(GalleryStateLoadImagesFailure v) => v.stateType;
  static const Field<GalleryStateLoadImagesFailure, String> _f$stateType =
      Field('stateType', _$stateType,
          opt: true, def: galleryStateLoadImagesFailureType);
  static List<ImageGeneration> _$imageGeneration(
          GalleryStateLoadImagesFailure v) =>
      v.imageGeneration;
  static const Field<GalleryStateLoadImagesFailure, List<ImageGeneration>>
      _f$imageGeneration = Field('imageGeneration', _$imageGeneration);
  static List<ImageVariation> _$imageVariation(
          GalleryStateLoadImagesFailure v) =>
      v.imageVariation;
  static const Field<GalleryStateLoadImagesFailure, List<ImageVariation>>
      _f$imageVariation = Field('imageVariation', _$imageVariation);
  static String? _$error(GalleryStateLoadImagesFailure v) => v.error;
  static const Field<GalleryStateLoadImagesFailure, String> _f$error =
      Field('error', _$error);

  @override
  final Map<Symbol, Field<GalleryStateLoadImagesFailure, dynamic>> fields =
      const {
    #stateType: _f$stateType,
    #imageGeneration: _f$imageGeneration,
    #imageVariation: _f$imageVariation,
    #error: _f$error,
  };

  static GalleryStateLoadImagesFailure _instantiate(DecodingData data) {
    return GalleryStateLoadImagesFailure(
        stateType: data.dec(_f$stateType),
        imageGeneration: data.dec(_f$imageGeneration),
        imageVariation: data.dec(_f$imageVariation),
        error: data.dec(_f$error));
  }

  @override
  final Function instantiate = _instantiate;

  static GalleryStateLoadImagesFailure fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GalleryStateLoadImagesFailure>(map);
  }

  static GalleryStateLoadImagesFailure fromJson(String json) {
    return ensureInitialized().decodeJson<GalleryStateLoadImagesFailure>(json);
  }
}

mixin GalleryStateLoadImagesFailureMappable {
  String toJson() {
    return GalleryStateLoadImagesFailureMapper.ensureInitialized()
        .encodeJson<GalleryStateLoadImagesFailure>(
            this as GalleryStateLoadImagesFailure);
  }

  Map<String, dynamic> toMap() {
    return GalleryStateLoadImagesFailureMapper.ensureInitialized()
        .encodeMap<GalleryStateLoadImagesFailure>(
            this as GalleryStateLoadImagesFailure);
  }

  GalleryStateLoadImagesFailureCopyWith<GalleryStateLoadImagesFailure,
          GalleryStateLoadImagesFailure, GalleryStateLoadImagesFailure>
      get copyWith => _GalleryStateLoadImagesFailureCopyWithImpl(
          this as GalleryStateLoadImagesFailure, $identity, $identity);
  @override
  String toString() {
    return GalleryStateLoadImagesFailureMapper.ensureInitialized()
        .stringifyValue(this as GalleryStateLoadImagesFailure);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            GalleryStateLoadImagesFailureMapper.ensureInitialized()
                .isValueEqual(this as GalleryStateLoadImagesFailure, other));
  }

  @override
  int get hashCode {
    return GalleryStateLoadImagesFailureMapper.ensureInitialized()
        .hashValue(this as GalleryStateLoadImagesFailure);
  }
}

extension GalleryStateLoadImagesFailureValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GalleryStateLoadImagesFailure, $Out> {
  GalleryStateLoadImagesFailureCopyWith<$R, GalleryStateLoadImagesFailure, $Out>
      get $asGalleryStateLoadImagesFailure => $base.as(
          (v, t, t2) => _GalleryStateLoadImagesFailureCopyWithImpl(v, t, t2));
}

abstract class GalleryStateLoadImagesFailureCopyWith<
    $R,
    $In extends GalleryStateLoadImagesFailure,
    $Out> implements GalleryStateCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, ImageGeneration,
          ImageGenerationCopyWith<$R, ImageGeneration, ImageGeneration>>
      get imageGeneration;
  @override
  ListCopyWith<$R, ImageVariation,
          ImageVariationCopyWith<$R, ImageVariation, ImageVariation>>
      get imageVariation;
  @override
  $R call(
      {String? stateType,
      List<ImageGeneration>? imageGeneration,
      List<ImageVariation>? imageVariation,
      covariant String? error});
  GalleryStateLoadImagesFailureCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _GalleryStateLoadImagesFailureCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GalleryStateLoadImagesFailure, $Out>
    implements
        GalleryStateLoadImagesFailureCopyWith<$R, GalleryStateLoadImagesFailure,
            $Out> {
  _GalleryStateLoadImagesFailureCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GalleryStateLoadImagesFailure> $mapper =
      GalleryStateLoadImagesFailureMapper.ensureInitialized();
  @override
  ListCopyWith<$R, ImageGeneration,
          ImageGenerationCopyWith<$R, ImageGeneration, ImageGeneration>>
      get imageGeneration => ListCopyWith($value.imageGeneration,
          (v, t) => v.copyWith.$chain(t), (v) => call(imageGeneration: v));
  @override
  ListCopyWith<$R, ImageVariation,
          ImageVariationCopyWith<$R, ImageVariation, ImageVariation>>
      get imageVariation => ListCopyWith($value.imageVariation,
          (v, t) => v.copyWith.$chain(t), (v) => call(imageVariation: v));
  @override
  $R call(
          {String? stateType,
          List<ImageGeneration>? imageGeneration,
          List<ImageVariation>? imageVariation,
          String? error}) =>
      $apply(FieldCopyWithData({
        if (stateType != null) #stateType: stateType,
        if (imageGeneration != null) #imageGeneration: imageGeneration,
        if (imageVariation != null) #imageVariation: imageVariation,
        if (error != null) #error: error
      }));
  @override
  GalleryStateLoadImagesFailure $make(CopyWithData data) =>
      GalleryStateLoadImagesFailure(
          stateType: data.get(#stateType, or: $value.stateType),
          imageGeneration:
              data.get(#imageGeneration, or: $value.imageGeneration),
          imageVariation: data.get(#imageVariation, or: $value.imageVariation),
          error: data.get(#error, or: $value.error));

  @override
  GalleryStateLoadImagesFailureCopyWith<$R2, GalleryStateLoadImagesFailure,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GalleryStateLoadImagesFailureCopyWithImpl($value, $cast, t);
}
