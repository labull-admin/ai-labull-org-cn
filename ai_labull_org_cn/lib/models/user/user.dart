import 'package:dart_mappable/dart_mappable.dart';

part 'user.mapper.dart';

@MappableClass()
class User with UserMappable {
  final String name;
  final String password;
  final String? jwtAccessToken;
  final String? jwtRefreshToken;

  const User({
    required this.name,
    required this.password,
    this.jwtAccessToken,
    this.jwtRefreshToken,
  });
}
