import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

enum RequestMethod { get, post, put, patch, delete }

class ApiCaller {
  ApiCaller({this.logResponse = false}) {
    _dio = _configureDioClient();
  }

  late Dio _dio;
  final bool logResponse;
  final cancelTokensList = <CancelToken>[];

  void _addNewCancelToken(CancelToken cancelToken) {
    debugPrint(
      ' -> ApiCaller::adding new cancelToken ${cancelToken.requestOptions?.path}',
    );

    cancelTokensList.add(cancelToken);
  }

  void close() {
    debugPrint(' -> ApiCaller::begin close()');
    for (final cancelToken in cancelTokensList) {
      try {
        debugPrint(
          ' -> ApiCaller::closing ${cancelToken.requestOptions?.path}',
        );
        cancelToken.cancel('');
      } catch (e) {
        debugPrint(
          ' -> ApiCaller::${cancelToken.requestOptions?.path} closing failed',
        );
      }
    }
  }

  Future makeReq(String path, RequestMethod method, {dynamic data}) async {
    switch (method) {
      case RequestMethod.get:
        return get(path, data: data);
      case RequestMethod.post:
        return post(path, data: data);
      case RequestMethod.put:
        return put(path, data: data);
      case RequestMethod.patch:
        return patch(path, data: data);
      case RequestMethod.delete:
        return delete(path, data: data);
    }
  }

  Future get(String path, {dynamic data}) async {
    final cancelToken = CancelToken();
    final res = _dio.get(path, queryParameters: data, cancelToken: cancelToken);
    _addNewCancelToken(cancelToken);
    return (await res).data;
  }

  Future post(String path, {dynamic data}) async {
    final cancelToken = CancelToken();
    final res = _dio.post(path, data: data, cancelToken: cancelToken);
    _addNewCancelToken(cancelToken);
    return (await res).data;
  }

  Future put(String path, {dynamic data}) async {
    final cancelToken = CancelToken();
    final res = _dio.put(path, data: data, cancelToken: cancelToken);
    _addNewCancelToken(cancelToken);
    return (await res).data;
  }

  Future patch(String path, {dynamic data}) async {
    final cancelToken = CancelToken();
    final res = _dio.patch(path, data: data, cancelToken: cancelToken);
    _addNewCancelToken(cancelToken);
    return (await res).data;
  }

  Future delete(String path, {dynamic data}) async {
    final cancelToken = CancelToken();
    final res = _dio.delete(path, data: data, cancelToken: cancelToken);
    _addNewCancelToken(cancelToken);
    return (await res).data;
  }

  static Map<String, dynamic> _getHeaders() {
    return {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };
  }

  Dio _configureDioClient() {
    final dio = Dio(BaseOptions(headers: _getHeaders()));
    if (kDebugMode && logResponse) {
      dio.interceptors
          .add(PrettyDioLogger(requestHeader: true, requestBody: true));
    }
    return dio;
  }
}

typedef ListItemParser<T> = T Function(dynamic data);

List<T> listParser<T>(dynamic data, ListItemParser<T> parser) {
  final list = <T>[];
  if (data is List) {
    for (final item in data) {
      list.add(parser(item));
    }
  }
  return list;
}
