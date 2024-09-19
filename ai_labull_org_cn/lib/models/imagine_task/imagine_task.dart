import 'package:dart_mappable/dart_mappable.dart';
part 'imagine_task.mapper.dart';

@MappableClass()
class ImagineTask with ImagineTaskMappable {
  final int pk;
  final int user;
  final String prompt;
  final bool skipPromptCheck;
  final String aspectRatio;
  final String processMode;
  final String? webhookEndpoint;
  final String? webhookSecret;
  final bool notifyProgress;
  final String? taskId;
  final ImagineTaskResponse? imagineTaskResponse;
  final String createdAt;

  ImagineTask({
    required this.pk,
    required this.user,
    required this.prompt,
    required this.skipPromptCheck,
    required this.aspectRatio,
    required this.processMode,
    required this.webhookEndpoint,
    required this.webhookSecret,
    required this.notifyProgress,
    required this.taskId,
    required this.imagineTaskResponse,
    required this.createdAt,
  });

  static const fromMap = ImagineTaskMapper.fromMap;
  static const fromJson = ImagineTaskMapper.fromJson;
}

@MappableClass()
class ImagineTaskResponse with ImagineTaskResponseMappable {
  final int pk;
  final int imagineTask;
  final Map response;
  final String image;

  ImagineTaskResponse({
    required this.pk,
    required this.imagineTask,
    required this.response,
    required this.image,
  });
  static const fromMap = ImagineTaskResponseMapper.fromMap;
  static const fromJson = ImagineTaskResponseMapper.fromJson;
}
