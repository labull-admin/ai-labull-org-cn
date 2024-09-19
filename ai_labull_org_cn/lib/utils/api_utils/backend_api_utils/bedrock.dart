import 'dart:convert';
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

String chatKnowledgeBaseApiUrl =
    "${labullAiBackendApiBaseUrl}/bedrock/chat_knowledge_base/";

Dio dio = DioClient.getDioInstance();
Future<Map<String, dynamic>> invokeKnowledgeBaseAgent(
    {required String prompt, String? sessionId}) async {
  try {
    final response = await dio.post(
      chatKnowledgeBaseApiUrl,
      data: {
        'prompt': prompt,
        // 'session_id': sessionId,
      },
    );
    if (response.statusCode == 200) {
      // dynamic responseData = json.decode(response.data);
      // print(response.data['response']);
      return response.data;
    } else {
      // Handle error case
      throw ('chat error: ${response.statusCode}');
    }
  } on http.ClientException catch (exception) {
    throw ('chat error: $exception');
  }
}
