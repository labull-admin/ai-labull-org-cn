import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

String? labullAiBackendApiBaseUrl =
    dotenv.maybeGet('LABULL_AI_BACKEND_API_BASE_URL', fallback: null);

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
      throw Exception(errorMessage);
    }
  } catch (e) {
    throw ('login error: $e');
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
      throw Exception(errorMessage);
    }
  } catch (e) {
    throw ('tokenRefresh error: $e');
  }
}
