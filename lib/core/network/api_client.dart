import 'package:dio/dio.dart';
import 'api_endpoints.dart';

class ApiClient {
  static final ApiClient _instance = ApiClient._internal();
  factory ApiClient() => _instance;

  late Dio dio;
  String? _token;

  ApiClient._internal() {
    dio = Dio(
      BaseOptions(
        baseUrl: kBaseUrl,
        connectTimeout: const Duration(seconds: 30), // Increased to 30s for local testing
        receiveTimeout: const Duration(seconds: 30),
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          print("NETWORK REQUEST: [${options.method}] ${options.baseUrl}${options.path}");
          if (options.data != null) print("NETWORK DATA: ${options.data}");
          if (_token != null) {
            options.headers['Authorization'] = 'Bearer $_token';
          }
          return handler.next(options);
        },
        onResponse: (response, handler) {
          print("NETWORK RESPONSE: [${response.statusCode}] ${response.requestOptions.path}");
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          print("NETWORK ERROR: [${e.response?.statusCode}] ${e.requestOptions.path}");
          print("NETWORK ERROR MESSAGE: ${e.message}");
          if (e.response != null) print("NETWORK ERROR DATA: ${e.response?.data}");
          return handler.next(e);
        },
      ),
    );
  }

  /// Updates the token used for authenticated requests.
  void setToken(String? token) {
    _token = token;
  }
}
