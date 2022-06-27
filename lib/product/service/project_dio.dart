import 'package:dio/dio.dart';

class ProjectDioMixin {
  final service = Dio(BaseOptions(
    baseUrl: "https://api.collectapi.com/",
    headers: {
      "Authorization": "apikey 5S7jcwAYSJMWXFveeqXYvv:2qpWmZsqYPyXVE8dxmRsqY",
      "content-type": "application/json",
    },
  ));
}
