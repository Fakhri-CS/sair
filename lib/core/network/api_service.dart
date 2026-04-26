import 'package:dio/dio.dart';
import 'api_client.dart';

class ApiService {
  final Dio _dio = ApiClient().dio;

  Future<Response> get(String path) async {
    try {
      return await _dio.get(path);
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  Future<Response> post(String path, {dynamic data}) async {
    try {
      return await _dio.post(path, data: data);
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  Future<Response> put(String path, {dynamic data}) async {
    try {
      return await _dio.put(path, data: data);
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  Future<Response> delete(String path) async {
    try {
      return await _dio.delete(path);
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  Exception _handleError(DioException e) {
    final url = "${e.requestOptions.baseUrl}${e.requestOptions.path}";
    final method = e.requestOptions.method;
    final status = e.response?.statusCode ?? "No Status";
    final data = e.response?.data?.toString() ?? "No Response Body";
    
    return Exception(
      "Network Error\nURL: [$method] $url\nStatus: $status\nResponse: $data"
    );
  }
}
