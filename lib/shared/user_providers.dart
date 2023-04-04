import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/infrastructure/user/user_repository.dart';
import 'package:lettutor/shared/core_providers.dart';

final userRepositoryProvider = Provider.autoDispose<UserRepository>((ref) {
  return UserRepository(ref.watch(authenticatedHttpService));
});
