import 'package:dart_mappable/dart_mappable.dart';

part 'user.mapper.dart';

@MappableClass()
class User with UserMappable {
  final String name;
  final String email;
  final bool isStaff;

  const User({
    required this.name,
    required this.email,
    required this.isStaff,
  });
}
