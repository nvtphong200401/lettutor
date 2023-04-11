import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/infrastructure/authen/auth_repository.dart';

part 'auth_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.unAuthenticated({String? message}) = _UnAuthenticated;
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.authenticating() = _Authenticating;
  const factory AuthState.signupFailed(String? message) = _SignupFailed;
  const factory AuthState.signupSuccess() = _SignupSuccess;
}

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier(this._repo) : super(const AuthState.unAuthenticated());
  final AuthRepository _repo;

  Future login(String email, String password) async {
    if (email.isEmpty || password.isEmpty) {
      state = const AuthState.unAuthenticated(message: 'Empty email or password');
      return;
      //left(const Failure(message: 'Empty email or password'));
    }
    state = const AuthState.authenticating();
    final res = await _repo.login(email, password);
    state = res.foldRight(state, (r, oldState) => const AuthState.authenticated());
    // return res;
  }

  Future signup(String email, String password) async {
    state = const AuthState.authenticating();
    final res = await _repo.signup(email, password);
    state =
        res.fold((l) => AuthState.signupFailed(l.message), (r) => const AuthState.signupSuccess());
  }

  void updateAuthState(AuthState newState) {
    state = newState;
  }
}
