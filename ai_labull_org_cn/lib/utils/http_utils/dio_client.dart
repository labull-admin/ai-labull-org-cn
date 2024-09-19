import 'package:dio/dio.dart';
export 'package:dio/dio.dart';

class DioClient {
  static Dio? _dio;

  static Dio getDioInstance() {
    BaseOptions options = BaseOptions(extra: {
      'withCredentials': true,
    }, headers: {
      'Accept': 'application/json',
      'Content-type': 'application/json',
      'X-Requested-With': 'XMLHttpRequest',
    });
    _dio = Dio(options);

    return _dio!;
  }
}
