import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:lettutor/service/request_wrapper.dart';

import '../core/infrastructure/failure.dart';
import '../core/infrastructure/request_param.dart';

class HttpService {
  final Dio _dio;
  HttpService(this._dio);

  Future<Either<Failure, T>> getData<T>(IParam param) async {
    return requestWrapper(_dio.get(
      param.link,
      queryParameters: param.queryParam,
      data: param.json,
    ));
  }

  Future<Either<Failure, T>> postData<T>(IParam param) async {
    return requestWrapper(_dio.post(param.link, data: param.json));
  }

  Future<Either<Failure, T>> putData<T>(IParam param) async {
    return requestWrapper(_dio.put(param.link, data: param.json));
  }

  Future<Either<Failure, T>> deleteData<T>(IParam param) async {
    log(param.json.toString());
    return requestWrapper(_dio.delete(param.link, data: param.json));
  }
}
