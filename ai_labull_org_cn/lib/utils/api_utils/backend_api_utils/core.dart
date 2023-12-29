import 'dart:convert';
import 'package:ai.labull.org.cn/exceptions/authentication_exception.dart';
import 'package:ai.labull.org.cn/exceptions/token_refresh_exception.dart';
import 'package:http/http.dart' as http;
import 'package:sentry/sentry.dart';



String labullAiBackendApiBaseUrl =
    const bool.hasEnvironment('LABULL_AI_BACKEND_API_BASE_URL')
        ? const String.fromEnvironment('LABULL_AI_BACKEND_API_BASE_URL')
        : (throw ArgumentError('LABULL_AI_BACKEND_API_BASE_URL is not set.'));

String coreLoginApiUrl = "$labullAiBackendApiBaseUrl/core/login/";
String coreTokenRefreshApiUrl =
    "$labullAiBackendApiBaseUrl/core/token/refresh/";

Future<Map<String, String>> login(
    {required String username, required String password}) async {
  try {
    final response = await http.post(
      Uri.parse(coreLoginApiUrl),
      body: {
        'username': username,
        'password': password,
      },
    );
    final data = jsonDecode(utf8.decode(response.bodyBytes));
    if (response.statusCode == 200) {
      Map<String, String> jwtToken = {
        'access': data['access'],
        'refresh': data['refresh'],
      };
      return jwtToken;
    } else {
      String errorMessage =
          'Failed to login: response status code is ${response.statusCode}';
      data.containsKey('detail')
          ? errorMessage += ': ${data['detail']}'
          : errorMessage;
      throw AuthenticationException(errorMessage);
    }
  } on http.ClientException catch (exception) {
    throw ('login error: $exception');
  }
}

Future<String> tokenRefresh({required String refreshToken}) async {
  try {
    final response = await http.post(
      Uri.parse(coreTokenRefreshApiUrl),
      body: {
        'refresh': refreshToken,
      },
    );
    final data = jsonDecode(utf8.decode(response.bodyBytes));
    if (response.statusCode == 200) {
      return data['access'];
    } else {
      String errorMessage =
          'Failed to refresh token: response status code is ${response.statusCode}';
      data.containsKey('detail')
          ? errorMessage += ': ${data['detail']}'
          : errorMessage;
      throw TokenRefreshException(errorMessage);
    }
  } on http.ClientException catch (e) {
    throw ('tokenRefresh error: $e');
  }
}
