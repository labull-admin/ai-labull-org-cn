// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'sortable_item.dart';

class SortableItemMapper extends ClassMapperBase<SortableItem> {
  SortableItemMapper._();

  static SortableItemMapper? _instance;
  static SortableItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SortableItemMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SortableItem';

  static String _$createAt(SortableItem v) => v.createAt;
  static const Field<SortableItem, String> _f$createAt =
      Field('createAt', _$createAt);
  static dynamic _$item(SortableItem v) => v.item;
  static const Field<SortableItem, dynamic> _f$item = Field('item', _$item);

  @override
  final Map<Symbol, Field<SortableItem, dynamic>> fields = const {
    #createAt: _f$createAt,
    #item: _f$item,
  };

  static SortableItem _instantiate(DecodingData data) {
    return SortableItem(data.dec(_f$createAt), data.dec(_f$item));
  }

  @override
  final Function instantiate = _instantiate;

  static SortableItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SortableItem>(map);
  }

  static SortableItem fromJson(String json) {
    return ensureInitialized().decodeJson<SortableItem>(json);
  }
}

mixin SortableItemMappable {
  String toJson() {
    return SortableItemMapper.ensureInitialized()
        .encodeJson<SortableItem>(this as SortableItem);
  }

  Map<String, dynamic> toMap() {
    return SortableItemMapper.ensureInitialized()
        .encodeMap<SortableItem>(this as SortableItem);
  }

  SortableItemCopyWith<SortableItem, SortableItem, SortableItem> get copyWith =>
      _SortableItemCopyWithImpl(this as SortableItem, $identity, $identity);
  @override
  String toString() {
    return SortableItemMapper.ensureInitialized()
        .stringifyValue(this as SortableItem);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            SortableItemMapper.ensureInitialized()
                .isValueEqual(this as SortableItem, other));
  }

  @override
  int get hashCode {
    return SortableItemMapper.ensureInitialized()
        .hashValue(this as SortableItem);
  }
}

extension SortableItemValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SortableItem, $Out> {
  SortableItemCopyWith<$R, SortableItem, $Out> get $asSortableItem =>
      $base.as((v, t, t2) => _SortableItemCopyWithImpl(v, t, t2));
}

abstract class SortableItemCopyWith<$R, $In extends SortableItem, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? createAt, dynamic item});
  SortableItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SortableItemCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SortableItem, $Out>
    implements SortableItemCopyWith<$R, SortableItem, $Out> {
  _SortableItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SortableItem> $mapper =
      SortableItemMapper.ensureInitialized();
  @override
  $R call({String? createAt, Object? item = $none}) =>
      $apply(FieldCopyWithData({
        if (createAt != null) #createAt: createAt,
        if (item != $none) #item: item
      }));
  @override
  SortableItem $make(CopyWithData data) => SortableItem(
      data.get(#createAt, or: $value.createAt),
      data.get(#item, or: $value.item));

  @override
  SortableItemCopyWith<$R2, SortableItem, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SortableItemCopyWithImpl($value, $cast, t);
}
