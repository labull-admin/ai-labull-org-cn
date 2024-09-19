// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'imagine_task.dart';

class ImagineTaskMapper extends ClassMapperBase<ImagineTask> {
  ImagineTaskMapper._();

  static ImagineTaskMapper? _instance;
  static ImagineTaskMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImagineTaskMapper._());
      ImagineTaskResponseMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImagineTask';

  static int _$pk(ImagineTask v) => v.pk;
  static const Field<ImagineTask, int> _f$pk = Field('pk', _$pk);
  static int _$user(ImagineTask v) => v.user;
  static const Field<ImagineTask, int> _f$user = Field('user', _$user);
  static String _$prompt(ImagineTask v) => v.prompt;
  static const Field<ImagineTask, String> _f$prompt = Field('prompt', _$prompt);
  static bool _$skipPromptCheck(ImagineTask v) => v.skipPromptCheck;
  static const Field<ImagineTask, bool> _f$skipPromptCheck =
      Field('skipPromptCheck', _$skipPromptCheck);
  static String _$aspectRatio(ImagineTask v) => v.aspectRatio;
  static const Field<ImagineTask, String> _f$aspectRatio =
      Field('aspectRatio', _$aspectRatio);
  static String _$processMode(ImagineTask v) => v.processMode;
  static const Field<ImagineTask, String> _f$processMode =
      Field('processMode', _$processMode);
  static String? _$webhookEndpoint(ImagineTask v) => v.webhookEndpoint;
  static const Field<ImagineTask, String> _f$webhookEndpoint =
      Field('webhookEndpoint', _$webhookEndpoint);
  static String? _$webhookSecret(ImagineTask v) => v.webhookSecret;
  static const Field<ImagineTask, String> _f$webhookSecret =
      Field('webhookSecret', _$webhookSecret);
  static bool _$notifyProgress(ImagineTask v) => v.notifyProgress;
  static const Field<ImagineTask, bool> _f$notifyProgress =
      Field('notifyProgress', _$notifyProgress);
  static String? _$taskId(ImagineTask v) => v.taskId;
  static const Field<ImagineTask, String> _f$taskId = Field('taskId', _$taskId);
  static ImagineTaskResponse? _$imagineTaskResponse(ImagineTask v) =>
      v.imagineTaskResponse;
  static const Field<ImagineTask, ImagineTaskResponse> _f$imagineTaskResponse =
      Field('imagineTaskResponse', _$imagineTaskResponse);
  static String _$createdAt(ImagineTask v) => v.createdAt;
  static const Field<ImagineTask, String> _f$createdAt =
      Field('createdAt', _$createdAt);

  @override
  final MappableFields<ImagineTask> fields = const {
    #pk: _f$pk,
    #user: _f$user,
    #prompt: _f$prompt,
    #skipPromptCheck: _f$skipPromptCheck,
    #aspectRatio: _f$aspectRatio,
    #processMode: _f$processMode,
    #webhookEndpoint: _f$webhookEndpoint,
    #webhookSecret: _f$webhookSecret,
    #notifyProgress: _f$notifyProgress,
    #taskId: _f$taskId,
    #imagineTaskResponse: _f$imagineTaskResponse,
    #createdAt: _f$createdAt,
  };

  static ImagineTask _instantiate(DecodingData data) {
    return ImagineTask(
        pk: data.dec(_f$pk),
        user: data.dec(_f$user),
        prompt: data.dec(_f$prompt),
        skipPromptCheck: data.dec(_f$skipPromptCheck),
        aspectRatio: data.dec(_f$aspectRatio),
        processMode: data.dec(_f$processMode),
        webhookEndpoint: data.dec(_f$webhookEndpoint),
        webhookSecret: data.dec(_f$webhookSecret),
        notifyProgress: data.dec(_f$notifyProgress),
        taskId: data.dec(_f$taskId),
        imagineTaskResponse: data.dec(_f$imagineTaskResponse),
        createdAt: data.dec(_f$createdAt));
  }

  @override
  final Function instantiate = _instantiate;

  static ImagineTask fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImagineTask>(map);
  }

  static ImagineTask fromJson(String json) {
    return ensureInitialized().decodeJson<ImagineTask>(json);
  }
}

mixin ImagineTaskMappable {
  String toJson() {
    return ImagineTaskMapper.ensureInitialized()
        .encodeJson<ImagineTask>(this as ImagineTask);
  }

  Map<String, dynamic> toMap() {
    return ImagineTaskMapper.ensureInitialized()
        .encodeMap<ImagineTask>(this as ImagineTask);
  }

  ImagineTaskCopyWith<ImagineTask, ImagineTask, ImagineTask> get copyWith =>
      _ImagineTaskCopyWithImpl(this as ImagineTask, $identity, $identity);
  @override
  String toString() {
    return ImagineTaskMapper.ensureInitialized()
        .stringifyValue(this as ImagineTask);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ImagineTaskMapper.ensureInitialized()
                .isValueEqual(this as ImagineTask, other));
  }

  @override
  int get hashCode {
    return ImagineTaskMapper.ensureInitialized().hashValue(this as ImagineTask);
  }
}

extension ImagineTaskValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImagineTask, $Out> {
  ImagineTaskCopyWith<$R, ImagineTask, $Out> get $asImagineTask =>
      $base.as((v, t, t2) => _ImagineTaskCopyWithImpl(v, t, t2));
}

abstract class ImagineTaskCopyWith<$R, $In extends ImagineTask, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ImagineTaskResponseCopyWith<$R, ImagineTaskResponse, ImagineTaskResponse>?
      get imagineTaskResponse;
  $R call(
      {int? pk,
      int? user,
      String? prompt,
      bool? skipPromptCheck,
      String? aspectRatio,
      String? processMode,
      String? webhookEndpoint,
      String? webhookSecret,
      bool? notifyProgress,
      String? taskId,
      ImagineTaskResponse? imagineTaskResponse,
      String? createdAt});
  ImagineTaskCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImagineTaskCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImagineTask, $Out>
    implements ImagineTaskCopyWith<$R, ImagineTask, $Out> {
  _ImagineTaskCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImagineTask> $mapper =
      ImagineTaskMapper.ensureInitialized();
  @override
  ImagineTaskResponseCopyWith<$R, ImagineTaskResponse, ImagineTaskResponse>?
      get imagineTaskResponse => $value.imagineTaskResponse?.copyWith
          .$chain((v) => call(imagineTaskResponse: v));
  @override
  $R call(
          {int? pk,
          int? user,
          String? prompt,
          bool? skipPromptCheck,
          String? aspectRatio,
          String? processMode,
          Object? webhookEndpoint = $none,
          Object? webhookSecret = $none,
          bool? notifyProgress,
          Object? taskId = $none,
          Object? imagineTaskResponse = $none,
          String? createdAt}) =>
      $apply(FieldCopyWithData({
        if (pk != null) #pk: pk,
        if (user != null) #user: user,
        if (prompt != null) #prompt: prompt,
        if (skipPromptCheck != null) #skipPromptCheck: skipPromptCheck,
        if (aspectRatio != null) #aspectRatio: aspectRatio,
        if (processMode != null) #processMode: processMode,
        if (webhookEndpoint != $none) #webhookEndpoint: webhookEndpoint,
        if (webhookSecret != $none) #webhookSecret: webhookSecret,
        if (notifyProgress != null) #notifyProgress: notifyProgress,
        if (taskId != $none) #taskId: taskId,
        if (imagineTaskResponse != $none)
          #imagineTaskResponse: imagineTaskResponse,
        if (createdAt != null) #createdAt: createdAt
      }));
  @override
  ImagineTask $make(CopyWithData data) => ImagineTask(
      pk: data.get(#pk, or: $value.pk),
      user: data.get(#user, or: $value.user),
      prompt: data.get(#prompt, or: $value.prompt),
      skipPromptCheck: data.get(#skipPromptCheck, or: $value.skipPromptCheck),
      aspectRatio: data.get(#aspectRatio, or: $value.aspectRatio),
      processMode: data.get(#processMode, or: $value.processMode),
      webhookEndpoint: data.get(#webhookEndpoint, or: $value.webhookEndpoint),
      webhookSecret: data.get(#webhookSecret, or: $value.webhookSecret),
      notifyProgress: data.get(#notifyProgress, or: $value.notifyProgress),
      taskId: data.get(#taskId, or: $value.taskId),
      imagineTaskResponse:
          data.get(#imagineTaskResponse, or: $value.imagineTaskResponse),
      createdAt: data.get(#createdAt, or: $value.createdAt));

  @override
  ImagineTaskCopyWith<$R2, ImagineTask, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ImagineTaskCopyWithImpl($value, $cast, t);
}

class ImagineTaskResponseMapper extends ClassMapperBase<ImagineTaskResponse> {
  ImagineTaskResponseMapper._();

  static ImagineTaskResponseMapper? _instance;
  static ImagineTaskResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImagineTaskResponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ImagineTaskResponse';

  static int _$pk(ImagineTaskResponse v) => v.pk;
  static const Field<ImagineTaskResponse, int> _f$pk = Field('pk', _$pk);
  static int _$imagineTask(ImagineTaskResponse v) => v.imagineTask;
  static const Field<ImagineTaskResponse, int> _f$imagineTask =
      Field('imagineTask', _$imagineTask);
  static Map<dynamic, dynamic> _$response(ImagineTaskResponse v) => v.response;
  static const Field<ImagineTaskResponse, Map<dynamic, dynamic>> _f$response =
      Field('response', _$response);
  static String _$image(ImagineTaskResponse v) => v.image;
  static const Field<ImagineTaskResponse, String> _f$image =
      Field('image', _$image);

  @override
  final MappableFields<ImagineTaskResponse> fields = const {
    #pk: _f$pk,
    #imagineTask: _f$imagineTask,
    #response: _f$response,
    #image: _f$image,
  };

  static ImagineTaskResponse _instantiate(DecodingData data) {
    return ImagineTaskResponse(
        pk: data.dec(_f$pk),
        imagineTask: data.dec(_f$imagineTask),
        response: data.dec(_f$response),
        image: data.dec(_f$image));
  }

  @override
  final Function instantiate = _instantiate;

  static ImagineTaskResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImagineTaskResponse>(map);
  }

  static ImagineTaskResponse fromJson(String json) {
    return ensureInitialized().decodeJson<ImagineTaskResponse>(json);
  }
}

mixin ImagineTaskResponseMappable {
  String toJson() {
    return ImagineTaskResponseMapper.ensureInitialized()
        .encodeJson<ImagineTaskResponse>(this as ImagineTaskResponse);
  }

  Map<String, dynamic> toMap() {
    return ImagineTaskResponseMapper.ensureInitialized()
        .encodeMap<ImagineTaskResponse>(this as ImagineTaskResponse);
  }

  ImagineTaskResponseCopyWith<ImagineTaskResponse, ImagineTaskResponse,
          ImagineTaskResponse>
      get copyWith => _ImagineTaskResponseCopyWithImpl(
          this as ImagineTaskResponse, $identity, $identity);
  @override
  String toString() {
    return ImagineTaskResponseMapper.ensureInitialized()
        .stringifyValue(this as ImagineTaskResponse);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ImagineTaskResponseMapper.ensureInitialized()
                .isValueEqual(this as ImagineTaskResponse, other));
  }

  @override
  int get hashCode {
    return ImagineTaskResponseMapper.ensureInitialized()
        .hashValue(this as ImagineTaskResponse);
  }
}

extension ImagineTaskResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImagineTaskResponse, $Out> {
  ImagineTaskResponseCopyWith<$R, ImagineTaskResponse, $Out>
      get $asImagineTaskResponse =>
          $base.as((v, t, t2) => _ImagineTaskResponseCopyWithImpl(v, t, t2));
}

abstract class ImagineTaskResponseCopyWith<$R, $In extends ImagineTaskResponse,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, dynamic, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get response;
  $R call(
      {int? pk,
      int? imagineTask,
      Map<dynamic, dynamic>? response,
      String? image});
  ImagineTaskResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ImagineTaskResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImagineTaskResponse, $Out>
    implements ImagineTaskResponseCopyWith<$R, ImagineTaskResponse, $Out> {
  _ImagineTaskResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImagineTaskResponse> $mapper =
      ImagineTaskResponseMapper.ensureInitialized();
  @override
  MapCopyWith<$R, dynamic, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get response => MapCopyWith($value.response,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(response: v));
  @override
  $R call(
          {int? pk,
          int? imagineTask,
          Map<dynamic, dynamic>? response,
          String? image}) =>
      $apply(FieldCopyWithData({
        if (pk != null) #pk: pk,
        if (imagineTask != null) #imagineTask: imagineTask,
        if (response != null) #response: response,
        if (image != null) #image: image
      }));
  @override
  ImagineTaskResponse $make(CopyWithData data) => ImagineTaskResponse(
      pk: data.get(#pk, or: $value.pk),
      imagineTask: data.get(#imagineTask, or: $value.imagineTask),
      response: data.get(#response, or: $value.response),
      image: data.get(#image, or: $value.image));

  @override
  ImagineTaskResponseCopyWith<$R2, ImagineTaskResponse, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ImagineTaskResponseCopyWithImpl($value, $cast, t);
}
