import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/core/presentation/common_widgets/constant.dart';
import 'package:lettutor/service/authen/authen_interceptor.dart';
import 'package:lettutor/service/http_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

final baseOptions = Provider.autoDispose((ref) {
  return BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: const Duration(milliseconds: 30000),
    receiveTimeout: const Duration(milliseconds: 30000),
    followRedirects: false,
  );
});

final localStorageProvider = Provider.autoDispose<SharedPreferences>(
  (ref) => throw UnimplementedError(),
);

final authenticatedInterceptorProvider = Provider.autoDispose(
  (ref) => AuthenticationInterceptor(ref.watch(localStorageProvider)),
);

final authenticatedDio = Provider.autoDispose(
  (ref) => Dio()
    ..options = ref.watch(baseOptions)
    ..interceptors.add(ref.watch(authenticatedInterceptorProvider)),
);

final authenticatedHttpService = Provider.autoDispose(
  (ref) => HttpService(ref.watch(authenticatedDio)),
);
