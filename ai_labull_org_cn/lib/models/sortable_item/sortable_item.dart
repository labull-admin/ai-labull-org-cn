import 'package:dart_mappable/dart_mappable.dart';
import 'package:intl/intl.dart';
part 'sortable_item.mapper.dart';

@MappableClass()
class SortableItem with SortableItemMappable {
  String createAt;
  dynamic item;

  SortableItem(this.createAt, this.item);

  DateTime get createdAtAsDateTime =>
      DateFormat("yyyy-MM-ddTHH:mm:ss.SSSSSSZ").parseUTC(createAt);
}
