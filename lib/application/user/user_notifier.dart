import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/core/infrastructure/failure.dart';
import 'package:lettutor/infrastructure/user/models/user_model.dart';
import 'package:lettutor/infrastructure/user/user_repository.dart';

class UserNotifier extends StateNotifier<AsyncValue<UserModel>> {
  UserNotifier(this._userRepository) : super(const AsyncLoading());
  final UserRepository _userRepository;

  Future<Either<Failure, UserModel>> getUserInfo() async {
    final result = await _userRepository.getUserInfo();
    state = result.fold(
        (l) => AsyncError(l.message.toString(), StackTrace.current), (r) => AsyncData(r));
    return result;
  }
}
