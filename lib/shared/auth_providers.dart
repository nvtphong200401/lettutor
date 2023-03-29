import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/application/authen/auth_notifier.dart';
import 'package:lettutor/infrastructure/authen/auth_repository.dart';
import 'package:lettutor/service/http_service.dart';

import 'core_providers.dart';

final dioForAuthProvider = Provider.autoDispose<Dio>((ref) {
  return Dio()..options = ref.watch(baseOptions);
});

final httpServiceForAuthProvider =
    Provider.autoDispose((ref) => HttpService(ref.watch(dioForAuthProvider)));

final authRepository = Provider.autoDispose<AuthRepository>(
  (ref) => AuthRepository(ref.watch(httpServiceForAuthProvider), ref.watch(localStorageProvider)),
);

final authNotifierProvider = StateNotifierProvider.autoDispose<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(ref.watch(authRepository));
});
