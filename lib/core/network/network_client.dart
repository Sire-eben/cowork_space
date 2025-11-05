import 'package:breej_hub_mobile/core/pref_keys/prefs_keys.dart';
import 'package:breej_hub_mobile/core/shared_services/local/services/local_cache.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NetworkClient {
  NetworkClient({required Dio dio, required LocalCache cache}) : _dio = dio, _cache = cache {
    _dio.options.validateStatus = (status) => true;
    _setupInterceptors();
  }

  final Dio _dio;
  final LocalCache _cache;

  void handleLogout() async {
    await _cache.deleteToken();
    await _cache.removeFromLocalCache(PrefsKeys.loggedIn.key);
    // context.
    debugPrint('User logged out due to unauthorized access (401).');
  }

  void _setupInterceptors() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions requestOptions, RequestInterceptorHandler handler) async {
          final token = await _cache.getToken();

          if (token.isNotEmpty) {
            requestOptions.headers['Authorization'] = 'Bearer $token';
          }

          return handler.next(requestOptions);
        },
        onError: (DioException e, ErrorInterceptorHandler handler) {
          // Logout user if token is unauthorised
          if (e.response?.statusCode == 401) {
            handleLogout();
          }

          return handler.next(e);
        },
      ),
    );

    if (kDebugMode) {
      _dio.interceptors.add(
        LogInterceptor(
          responseBody: true,
          requestBody: true,
          logPrint: (text) {
            final pattern = RegExp('.{1,800}');
            pattern.allMatches(text.toString()).forEach((match) => debugPrint(match.group(0)));
          },
        ),
      );
    }
  }

  Future<Response<List<dynamic>>> getList(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) {
    return _dio.get<List<dynamic>>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response<Map<String, dynamic>?>> get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) {
    return _dio.get(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response<Map<String, dynamic>?>> post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) {
    return _dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response<dynamic>> put(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) {
    return _dio.put(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response<Map<String, dynamic>?>> delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) {
    return _dio.delete(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
    );
  }

  Future<Response<Map<String, dynamic>>> patch(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) {
    return _dio.patch(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
    );
  }
}
