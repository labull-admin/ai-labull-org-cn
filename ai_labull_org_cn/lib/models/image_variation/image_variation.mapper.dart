// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'image_variation.dart';

class ImageVariationMapper extends ClassMapperBase<ImageVariation> {
  ImageVariationMapper._();

  static ImageVariationMapper? _instance;
  static ImageVariationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImageVariationMapper._());
      ImageVariationResponseItemMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImageVariation';

  static int _$pk(ImageVariation v) => v.pk;
  static const Field<ImageVariation, int> _f$pk = Field('pk', _$pk);
  static int _$user(ImageVariation v) => v.user;
  static const Field<ImageVariation, int> _f$user = Field('user', _$user);
  static String _$size(ImageVariation v) => v.size;
  static const Field<ImageVariation, String> _f$size = Field('size', _$size);
  static String _$originalImage(ImageVariation v) => v.originalImage;
  static const Field<ImageVariation, String> _f$originalImage =
      Field('originalImage', _$originalImage);
  static int _$n(ImageVariation v) => v.n;
  static const Field<ImageVariation, int> _f$n = Field('n', _$n);
  static List<ImageVariationResponseItem> _$imageVariationResponseItems(
          ImageVariation v) =>
      v.imageVariationResponseItems;
  static const Field<ImageVariation, List<ImageVariationResponseItem>>
      _f$imageVariationResponseItems =
      Field('imageVariationResponseItems', _$imageVariationResponseItems);
  static String _$createdAt(ImageVariation v) => v.createdAt;
  static const Field<ImageVariation, String> _f$createdAt =
      Field('createdAt', _$createdAt);

  @override
  final Map<Symbol, Field<ImageVariation, dynamic>> fields = const {
    #pk: _f$pk,
    #user: _f$user,
    #size: _f$size,
    #originalImage: _f$originalImage,
    #n: _f$n,
    #imageVariationResponseItems: _f$imageVariationResponseItems,
    #createdAt: _f$createdAt,
  };

  static ImageVariation _instantiate(DecodingData data) {
    return ImageVariation(
        pk: data.dec(_f$pk),
        user: data.dec(_f$user),
        size: data.dec(_f$size),
        originalImage: data.dec(_f$originalImage),
        n: data.dec(_f$n),
        imageVariationResponseItems: data.dec(_f$imageVariationResponseItems),
        createdAt: data.dec(_f$createdAt));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageVariation fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImageVariation>(map);
  }

  static ImageVariation fromJson(String json) {
    return ensureInitialized().decodeJson<ImageVariation>(json);
  }
}

mixin ImageVariationMappable {
  String toJson() {
    return ImageVariationMapper.ensureInitialized()
        .encodeJson<ImageVariation>(this as ImageVariation);
  }

  Map<String, dynamic> toMap() {
    return ImageVariationMapper.ensureInitialized()
        .encodeMap<ImageVariation>(this as ImageVariation);
  }

  ImageVariationCopyWith<ImageVariation, ImageVariation, ImageVariation>
      get copyWith => _ImageVariationCopyWithImpl(
          this as ImageVariation, $identity, $identity);
  @override
  String toString() {
    return ImageVariationMapper.ensureInitialized()
        .stringifyValue(this as ImageVariation);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ImageVariationMapper.ensureInitialized()
                .isValueEqual(this as ImageVariation, other));
  }

  @override
  int get hashCode {
    return ImageVariationMapper.ensureInitialized()
        .hashValue(this as ImageVariation);
  }
}

extension ImageVariationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageVariation, $Out> {
  ImageVariationCopyWith<$R, ImageVariation, $Out> get $asImageVariation =>
      $base.as((v, t, t2) => _ImageVariationCopyWithImpl(v, t, t2));
}

abstract class ImageVariationCopyWith<$R, $In extends ImageVariation, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
      $R,
      ImageVariationResponseItem,
      ImageVariationResponseItemCopyWith<$R, ImageVariationResponseItem,
          ImageVariationResponseItem>> get imageVariationResponseItems;
  $R call(
      {int? pk,
      int? user,
      String? size,
      String? originalImage,
      int? n,
      List<ImageVariationResponseItem>? imageVariationResponseItems,
      String? createdAt});
  ImageVariationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ImageVariationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageVariation, $Out>
    implements ImageVariationCopyWith<$R, ImageVariation, $Out> {
  _ImageVariationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageVariation> $mapper =
      ImageVariationMapper.ensureInitialized();
  @override
  ListCopyWith<
      $R,
      ImageVariationResponseItem,
      ImageVariationResponseItemCopyWith<$R, ImageVariationResponseItem,
          ImageVariationResponseItem>> get imageVariationResponseItems =>
      ListCopyWith(
          $value.imageVariationResponseItems,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(imageVariationResponseItems: v));
  @override
  $R call(
          {int? pk,
          int? user,
          String? size,
          String? originalImage,
          int? n,
          List<ImageVariationResponseItem>? imageVariationResponseItems,
          String? createdAt}) =>
      $apply(FieldCopyWithData({
        if (pk != null) #pk: pk,
        if (user != null) #user: user,
        if (size != null) #size: size,
        if (originalImage != null) #originalImage: originalImage,
        if (n != null) #n: n,
        if (imageVariationResponseItems != null)
          #imageVariationResponseItems: imageVariationResponseItems,
        if (createdAt != null) #createdAt: createdAt
      }));
  @override
  ImageVariation $make(CopyWithData data) => ImageVariation(
      pk: data.get(#pk, or: $value.pk),
      user: data.get(#user, or: $value.user),
      size: data.get(#size, or: $value.size),
      originalImage: data.get(#originalImage, or: $value.originalImage),
      n: data.get(#n, or: $value.n),
      imageVariationResponseItems: data.get(#imageVariationResponseItems,
          or: $value.imageVariationResponseItems),
      createdAt: data.get(#createdAt, or: $value.createdAt));

  @override
  ImageVariationCopyWith<$R2, ImageVariation, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ImageVariationCopyWithImpl($value, $cast, t);
}

class ImageVariationResponseItemMapper
    extends ClassMapperBase<ImageVariationResponseItem> {
  ImageVariationResponseItemMapper._();

  static ImageVariationResponseItemMapper? _instance;
  static ImageVariationResponseItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ImageVariationResponseItemMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ImageVariationResponseItem';

  static int _$pk(ImageVariationResponseItem v) => v.pk;
  static const Field<ImageVariationResponseItem, int> _f$pk = Field('pk', _$pk);
  static String _$shortLivedImageUrl(ImageVariationResponseItem v) =>
      v.shortLivedImageUrl;
  static const Field<ImageVariationResponseItem, String> _f$shortLivedImageUrl =
      Field('shortLivedImageUrl', _$shortLivedImageUrl);
  static String? _$image(ImageVariationResponseItem v) => v.image;
  static const Field<ImageVariationResponseItem, String> _f$image =
      Field('image', _$image);
  static int _$imageVariation(ImageVariationResponseItem v) => v.imageVariation;
  static const Field<ImageVariationResponseItem, int> _f$imageVariation =
      Field('imageVariation', _$imageVariation);

  @override
  final Map<Symbol, Field<ImageVariationResponseItem, dynamic>> fields = const {
    #pk: _f$pk,
    #shortLivedImageUrl: _f$shortLivedImageUrl,
    #image: _f$image,
    #imageVariation: _f$imageVariation,
  };

  static ImageVariationResponseItem _instantiate(DecodingData data) {
    return ImageVariationResponseItem(
        pk: data.dec(_f$pk),
        shortLivedImageUrl: data.dec(_f$shortLivedImageUrl),
        image: data.dec(_f$image),
        imageVariation: data.dec(_f$imageVariation));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageVariationResponseItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImageVariationResponseItem>(map);
  }

  static ImageVariationResponseItem fromJson(String json) {
    return ensureInitialized().decodeJson<ImageVariationResponseItem>(json);
  }
}

mixin ImageVariationResponseItemMappable {
  String toJson() {
    return ImageVariationResponseItemMapper.ensureInitialized()
        .encodeJson<ImageVariationResponseItem>(
            this as ImageVariationResponseItem);
  }

  Map<String, dynamic> toMap() {
    return ImageVariationResponseItemMapper.ensureInitialized()
        .encodeMap<ImageVariationResponseItem>(
            this as ImageVariationResponseItem);
  }

  ImageVariationResponseItemCopyWith<ImageVariationResponseItem,
          ImageVariationResponseItem, ImageVariationResponseItem>
      get copyWith => _ImageVariationResponseItemCopyWithImpl(
          this as ImageVariationResponseItem, $identity, $identity);
  @override
  String toString() {
    return ImageVariationResponseItemMapper.ensureInitialized()
        .stringifyValue(this as ImageVariationResponseItem);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ImageVariationResponseItemMapper.ensureInitialized()
                .isValueEqual(this as ImageVariationResponseItem, other));
  }

  @override
  int get hashCode {
    return ImageVariationResponseItemMapper.ensureInitialized()
        .hashValue(this as ImageVariationResponseItem);
  }
}

extension ImageVariationResponseItemValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageVariationResponseItem, $Out> {
  ImageVariationResponseItemCopyWith<$R, ImageVariationResponseItem, $Out>
      get $asImageVariationResponseItem => $base
          .as((v, t, t2) => _ImageVariationResponseItemCopyWithImpl(v, t, t2));
}

abstract class ImageVariationResponseItemCopyWith<
    $R,
    $In extends ImageVariationResponseItem,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? pk,
      String? shortLivedImageUrl,
      String? image,
      int? imageVariation});
  ImageVariationResponseItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ImageVariationResponseItemCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageVariationResponseItem, $Out>
    implements
        ImageVariationResponseItemCopyWith<$R, ImageVariationResponseItem,
            $Out> {
  _ImageVariationResponseItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageVariationResponseItem> $mapper =
      ImageVariationResponseItemMapper.ensureInitialized();
  @override
  $R call(
          {int? pk,
          String? shortLivedImageUrl,
          Object? image = $none,
          int? imageVariation}) =>
      $apply(FieldCopyWithData({
        if (pk != null) #pk: pk,
        if (shortLivedImageUrl != null) #shortLivedImageUrl: shortLivedImageUrl,
        if (image != $none) #image: image,
        if (imageVariation != null) #imageVariation: imageVariation
      }));
  @override
  ImageVariationResponseItem $make(
          CopyWithData data) =>
      ImageVariationResponseItem(
          pk: data.get(#pk, or: $value.pk),
          shortLivedImageUrl:
              data.get(#shortLivedImageUrl, or: $value.shortLivedImageUrl),
          image: data.get(#image, or: $value.image),
          imageVariation: data.get(#imageVariation, or: $value.imageVariation));

  @override
  ImageVariationResponseItemCopyWith<$R2, ImageVariationResponseItem, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ImageVariationResponseItemCopyWithImpl($value, $cast, t);
}
