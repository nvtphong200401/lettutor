import 'package:dartz/dartz.dart';
import 'package:lettutor/core/infrastructure/failure.dart';
import 'package:lettutor/core/presentation/common_widgets/constant.dart';
import 'package:lettutor/infrastructure/authen/models/auth_result.dart';
import 'package:lettutor/infrastructure/authen/params/forgot_pass_param.dart';
import 'package:lettutor/infrastructure/authen/params/login_param.dart';
import 'package:lettutor/infrastructure/authen/params/signup_param.dart';
import 'package:lettutor/service/http_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  final HttpService _httpService;
  final SharedPreferences _preferences;
  AuthRepository(this._httpService, this._preferences);
  Future<Either<Failure, AuthResult>> login(String email, String password) async {
    final result = await _httpService.postData<AuthResult>(LoginParam(email, password));
    result.fold((l) => null, (r) async {
      if (r.tokens.access.token != null) {
        await _preferences.setString(accessTokenKey, r.tokens.access.token!);
      }
      if (r.tokens.refresh.token != null) {
        await _preferences.setString(refreshTokenKey, r.tokens.refresh.token!);
      }
    });
    return result;
  }

  Future<Either<Failure, AuthResult>> signup(String email, String password) async {
    return _httpService.postData<AuthResult>(SignupParam(email, password));
  }

  Future<Either<Failure, Unit>> forgotPassword(String email) async {
    return _httpService.postData<Unit>(ForgotPasswordParam(email));
  }
}
