import 'dart:core';
import 'dart:html';
import 'package:ai.labull.org.cn/exceptions/authentication_exception.dart';
import 'package:ai.labull.org.cn/exceptions/token_refresh_exception.dart';
import 'package:ai.labull.org.cn/models/user/user.dart';
import 'package:ai.labull.org.cn/utils/http_utils/dio_client.dart';
import 'package:http/http.dart' as http;

String labullAiBackendApiBaseUrl =
    const bool.hasEnvironment('LABULL_AI_BACKEND_API_BASE_URL')
        ? const String.fromEnvironment('LABULL_AI_BACKEND_API_BASE_URL')
        : (throw ArgumentError('LABULL_AI_BACKEND_API_BASE_URL is not set.'));

String coreLoginApiUrl = "$labullAiBackendApiBaseUrl/core/login/";
String coreLogoutApiUrl = "$labullAiBackendApiBaseUrl/core/logout/";
String coreTokenRefreshApiUrl =
    "$labullAiBackendApiBaseUrl/core/token/refresh/";

Dio dio = DioClient.getDioInstance();
Future<User> login({required String username, required String password}) async {
  try {
    final response = await dio.post(
      coreLoginApiUrl,
      data: {
        'username': username,
        'password': password,
      },
    );
      
    if (response.statusCode == 200) {
      final User user = User(
        name: response.data['username'],
        email: response.data['email'],
        isStaff: response.data['is_staff'],
      );
      return user;
    } else {
      throw AuthenticationException(response.data);
    }
  } on http.ClientException catch (exception) {
    throw ('login error: $exception');
  }
}

Future<User> tokenRefresh() async {
  try {
    final response = await dio.get(
      coreTokenRefreshApiUrl,
    );
    if (response.statusCode == 200) {
      final User user = User(
        name: response.data['username'],
        email: response.data['email'],
        isStaff: response.data['is_staff'],
      );
      return user;
    } else {
      throw TokenRefreshException(response.data);
    }
  } on http.ClientException catch (e) {
    throw ('tokenRefresh error: $e');
  }
}

Future<bool> logout() async {
  final response = await dio.get(coreLogoutApiUrl);
  if (response.statusCode == 200) {
    return true;
  } else {
    throw ('logout error: ${response.statusCode} ${response.data}');
  }
}
