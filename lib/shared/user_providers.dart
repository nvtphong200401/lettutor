import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/application/user/user_notifier.dart';
import 'package:lettutor/infrastructure/user/models/user_model.dart';
import 'package:lettutor/infrastructure/user/user_repository.dart';
import 'package:lettutor/shared/core_providers.dart';

final userRepositoryProvider = Provider.autoDispose<UserRepository>((ref) {
  return UserRepository(ref.watch(authenticatedHttpService));
});

final userNotifierProvider =
    StateNotifierProvider.autoDispose<UserNotifier, AsyncValue<UserModel>>((ref) {
  return UserNotifier(ref.watch(userRepositoryProvider));
});
