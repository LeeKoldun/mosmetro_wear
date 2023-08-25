import 'package:dio/dio.dart';

class DioRequest {
  static Dio dio = Dio(
    BaseOptions(
      contentType: "application/json",
    ),
  );
}