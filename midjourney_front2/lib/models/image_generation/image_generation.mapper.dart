// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'image_generation.dart';

class ImageGenerationMapper extends ClassMapperBase<ImageGeneration> {
  ImageGenerationMapper._();

  static ImageGenerationMapper? _instance;
  static ImageGenerationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImageGenerationMapper._());
      ImageGenerationResponseItemMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImageGeneration';

  static int _$pk(ImageGeneration v) => v.pk;
  static const Field<ImageGeneration, int> _f$pk = Field('pk', _$pk);
  static int _$user(ImageGeneration v) => v.user;
  static const Field<ImageGeneration, int> _f$user = Field('user', _$user);
  static String _$model(ImageGeneration v) => v.model;
  static const Field<ImageGeneration, String> _f$model =
      Field('model', _$model);
  static String _$prompt(ImageGeneration v) => v.prompt;
  static const Field<ImageGeneration, String> _f$prompt =
      Field('prompt', _$prompt);
  static String _$size(ImageGeneration v) => v.size;
  static const Field<ImageGeneration, String> _f$size = Field('size', _$size);
  static String _$quality(ImageGeneration v) => v.quality;
  static const Field<ImageGeneration, String> _f$quality =
      Field('quality', _$quality);
  static int _$n(ImageGeneration v) => v.n;
  static const Field<ImageGeneration, int> _f$n = Field('n', _$n);
  static List<ImageGenerationResponseItem> _$imageGenerationResponseItems(
          ImageGeneration v) =>
      v.imageGenerationResponseItems;
  static const Field<ImageGeneration, List<ImageGenerationResponseItem>>
      _f$imageGenerationResponseItems =
      Field('imageGenerationResponseItems', _$imageGenerationResponseItems);
  static String _$createdAt(ImageGeneration v) => v.createdAt;
  static const Field<ImageGeneration, String> _f$createdAt =
      Field('createdAt', _$createdAt);

  @override
  final MappableFields<ImageGeneration> fields = const {
    #pk: _f$pk,
    #user: _f$user,
    #model: _f$model,
    #prompt: _f$prompt,
    #size: _f$size,
    #quality: _f$quality,
    #n: _f$n,
    #imageGenerationResponseItems: _f$imageGenerationResponseItems,
    #createdAt: _f$createdAt,
  };

  static ImageGeneration _instantiate(DecodingData data) {
    return ImageGeneration(
        pk: data.dec(_f$pk),
        user: data.dec(_f$user),
        model: data.dec(_f$model),
        prompt: data.dec(_f$prompt),
        size: data.dec(_f$size),
        quality: data.dec(_f$quality),
        n: data.dec(_f$n),
        imageGenerationResponseItems: data.dec(_f$imageGenerationResponseItems),
        createdAt: data.dec(_f$createdAt));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageGeneration fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImageGeneration>(map);
  }

  static ImageGeneration fromJson(String json) {
    return ensureInitialized().decodeJson<ImageGeneration>(json);
  }
}

mixin ImageGenerationMappable {
  String toJson() {
    return ImageGenerationMapper.ensureInitialized()
        .encodeJson<ImageGeneration>(this as ImageGeneration);
  }

  Map<String, dynamic> toMap() {
    return ImageGenerationMapper.ensureInitialized()
        .encodeMap<ImageGeneration>(this as ImageGeneration);
  }

  ImageGenerationCopyWith<ImageGeneration, ImageGeneration, ImageGeneration>
      get copyWith => _ImageGenerationCopyWithImpl(
          this as ImageGeneration, $identity, $identity);
  @override
  String toString() {
    return ImageGenerationMapper.ensureInitialized()
        .stringifyValue(this as ImageGeneration);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ImageGenerationMapper.ensureInitialized()
                .isValueEqual(this as ImageGeneration, other));
  }

  @override
  int get hashCode {
    return ImageGenerationMapper.ensureInitialized()
        .hashValue(this as ImageGeneration);
  }
}

extension ImageGenerationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageGeneration, $Out> {
  ImageGenerationCopyWith<$R, ImageGeneration, $Out> get $asImageGeneration =>
      $base.as((v, t, t2) => _ImageGenerationCopyWithImpl(v, t, t2));
}

abstract class ImageGenerationCopyWith<$R, $In extends ImageGeneration, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
      $R,
      ImageGenerationResponseItem,
      ImageGenerationResponseItemCopyWith<$R, ImageGenerationResponseItem,
          ImageGenerationResponseItem>> get imageGenerationResponseItems;
  $R call(
      {int? pk,
      int? user,
      String? model,
      String? prompt,
      String? size,
      String? quality,
      int? n,
      List<ImageGenerationResponseItem>? imageGenerationResponseItems,
      String? createdAt});
  ImageGenerationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ImageGenerationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageGeneration, $Out>
    implements ImageGenerationCopyWith<$R, ImageGeneration, $Out> {
  _ImageGenerationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageGeneration> $mapper =
      ImageGenerationMapper.ensureInitialized();
  @override
  ListCopyWith<
      $R,
      ImageGenerationResponseItem,
      ImageGenerationResponseItemCopyWith<$R, ImageGenerationResponseItem,
          ImageGenerationResponseItem>> get imageGenerationResponseItems =>
      ListCopyWith(
          $value.imageGenerationResponseItems,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(imageGenerationResponseItems: v));
  @override
  $R call(
          {int? pk,
          int? user,
          String? model,
          String? prompt,
          String? size,
          String? quality,
          int? n,
          List<ImageGenerationResponseItem>? imageGenerationResponseItems,
          String? createdAt}) =>
      $apply(FieldCopyWithData({
        if (pk != null) #pk: pk,
        if (user != null) #user: user,
        if (model != null) #model: model,
        if (prompt != null) #prompt: prompt,
        if (size != null) #size: size,
        if (quality != null) #quality: quality,
        if (n != null) #n: n,
        if (imageGenerationResponseItems != null)
          #imageGenerationResponseItems: imageGenerationResponseItems,
        if (createdAt != null) #createdAt: createdAt
      }));
  @override
  ImageGeneration $make(CopyWithData data) => ImageGeneration(
      pk: data.get(#pk, or: $value.pk),
      user: data.get(#user, or: $value.user),
      model: data.get(#model, or: $value.model),
      prompt: data.get(#prompt, or: $value.prompt),
      size: data.get(#size, or: $value.size),
      quality: data.get(#quality, or: $value.quality),
      n: data.get(#n, or: $value.n),
      imageGenerationResponseItems: data.get(#imageGenerationResponseItems,
          or: $value.imageGenerationResponseItems),
      createdAt: data.get(#createdAt, or: $value.createdAt));

  @override
  ImageGenerationCopyWith<$R2, ImageGeneration, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ImageGenerationCopyWithImpl($value, $cast, t);
}

class ImageGenerationResponseItemMapper
    extends ClassMapperBase<ImageGenerationResponseItem> {
  ImageGenerationResponseItemMapper._();

  static ImageGenerationResponseItemMapper? _instance;
  static ImageGenerationResponseItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ImageGenerationResponseItemMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ImageGenerationResponseItem';

  static int _$pk(ImageGenerationResponseItem v) => v.pk;
  static const Field<ImageGenerationResponseItem, int> _f$pk =
      Field('pk', _$pk);
  static String? _$revisedPrompt(ImageGenerationResponseItem v) =>
      v.revisedPrompt;
  static const Field<ImageGenerationResponseItem, String> _f$revisedPrompt =
      Field('revisedPrompt', _$revisedPrompt);
  static String? _$revisedPromptInChinese(ImageGenerationResponseItem v) =>
      v.revisedPromptInChinese;
  static const Field<ImageGenerationResponseItem, String>
      _f$revisedPromptInChinese =
      Field('revisedPromptInChinese', _$revisedPromptInChinese);
  static String _$shortLivedImageUrl(ImageGenerationResponseItem v) =>
      v.shortLivedImageUrl;
  static const Field<ImageGenerationResponseItem, String>
      _f$shortLivedImageUrl = Field('shortLivedImageUrl', _$shortLivedImageUrl);
  static String? _$image(ImageGenerationResponseItem v) => v.image;
  static const Field<ImageGenerationResponseItem, String> _f$image =
      Field('image', _$image);
  static int _$imageGeneration(ImageGenerationResponseItem v) =>
      v.imageGeneration;
  static const Field<ImageGenerationResponseItem, int> _f$imageGeneration =
      Field('imageGeneration', _$imageGeneration);

  @override
  final MappableFields<ImageGenerationResponseItem> fields = const {
    #pk: _f$pk,
    #revisedPrompt: _f$revisedPrompt,
    #revisedPromptInChinese: _f$revisedPromptInChinese,
    #shortLivedImageUrl: _f$shortLivedImageUrl,
    #image: _f$image,
    #imageGeneration: _f$imageGeneration,
  };

  static ImageGenerationResponseItem _instantiate(DecodingData data) {
    return ImageGenerationResponseItem(
        pk: data.dec(_f$pk),
        revisedPrompt: data.dec(_f$revisedPrompt),
        revisedPromptInChinese: data.dec(_f$revisedPromptInChinese),
        shortLivedImageUrl: data.dec(_f$shortLivedImageUrl),
        image: data.dec(_f$image),
        imageGeneration: data.dec(_f$imageGeneration));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageGenerationResponseItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImageGenerationResponseItem>(map);
  }

  static ImageGenerationResponseItem fromJson(String json) {
    return ensureInitialized().decodeJson<ImageGenerationResponseItem>(json);
  }
}

mixin ImageGenerationResponseItemMappable {
  String toJson() {
    return ImageGenerationResponseItemMapper.ensureInitialized()
        .encodeJson<ImageGenerationResponseItem>(
            this as ImageGenerationResponseItem);
  }

  Map<String, dynamic> toMap() {
    return ImageGenerationResponseItemMapper.ensureInitialized()
        .encodeMap<ImageGenerationResponseItem>(
            this as ImageGenerationResponseItem);
  }

  ImageGenerationResponseItemCopyWith<ImageGenerationResponseItem,
          ImageGenerationResponseItem, ImageGenerationResponseItem>
      get copyWith => _ImageGenerationResponseItemCopyWithImpl(
          this as ImageGenerationResponseItem, $identity, $identity);
  @override
  String toString() {
    return ImageGenerationResponseItemMapper.ensureInitialized()
        .stringifyValue(this as ImageGenerationResponseItem);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ImageGenerationResponseItemMapper.ensureInitialized()
                .isValueEqual(this as ImageGenerationResponseItem, other));
  }

  @override
  int get hashCode {
    return ImageGenerationResponseItemMapper.ensureInitialized()
        .hashValue(this as ImageGenerationResponseItem);
  }
}

extension ImageGenerationResponseItemValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageGenerationResponseItem, $Out> {
  ImageGenerationResponseItemCopyWith<$R, ImageGenerationResponseItem, $Out>
      get $asImageGenerationResponseItem => $base
          .as((v, t, t2) => _ImageGenerationResponseItemCopyWithImpl(v, t, t2));
}

abstract class ImageGenerationResponseItemCopyWith<
    $R,
    $In extends ImageGenerationResponseItem,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? pk,
      String? revisedPrompt,
      String? revisedPromptInChinese,
      String? shortLivedImageUrl,
      String? image,
      int? imageGeneration});
  ImageGenerationResponseItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ImageGenerationResponseItemCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageGenerationResponseItem, $Out>
    implements
        ImageGenerationResponseItemCopyWith<$R, ImageGenerationResponseItem,
            $Out> {
  _ImageGenerationResponseItemCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageGenerationResponseItem> $mapper =
      ImageGenerationResponseItemMapper.ensureInitialized();
  @override
  $R call(
          {int? pk,
          Object? revisedPrompt = $none,
          Object? revisedPromptInChinese = $none,
          String? shortLivedImageUrl,
          Object? image = $none,
          int? imageGeneration}) =>
      $apply(FieldCopyWithData({
        if (pk != null) #pk: pk,
        if (revisedPrompt != $none) #revisedPrompt: revisedPrompt,
        if (revisedPromptInChinese != $none)
          #revisedPromptInChinese: revisedPromptInChinese,
        if (shortLivedImageUrl != null) #shortLivedImageUrl: shortLivedImageUrl,
        if (image != $none) #image: image,
        if (imageGeneration != null) #imageGeneration: imageGeneration
      }));
  @override
  ImageGenerationResponseItem $make(CopyWithData data) =>
      ImageGenerationResponseItem(
          pk: data.get(#pk, or: $value.pk),
          revisedPrompt: data.get(#revisedPrompt, or: $value.revisedPrompt),
          revisedPromptInChinese: data.get(#revisedPromptInChinese,
              or: $value.revisedPromptInChinese),
          shortLivedImageUrl:
              data.get(#shortLivedImageUrl, or: $value.shortLivedImageUrl),
          image: data.get(#image, or: $value.image),
          imageGeneration:
              data.get(#imageGeneration, or: $value.imageGeneration));

  @override
  ImageGenerationResponseItemCopyWith<$R2, ImageGenerationResponseItem, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ImageGenerationResponseItemCopyWithImpl($value, $cast, t);
}
