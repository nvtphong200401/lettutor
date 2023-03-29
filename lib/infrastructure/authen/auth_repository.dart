import 'package:dartz/dartz.dart';
import 'package:lettutor/core/infrastructure/failure.dart';
import 'package:lettutor/core/presentation/common_widgets/constant.dart';
import 'package:lettutor/infrastructure/authen/models/auth_result.dart';
import 'package:lettutor/infrastructure/authen/params/login_param.dart';
import 'package:lettutor/service/http_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  final HttpService _httpService;
  final SharedPreferences _preferences;
  AuthRepository(this._httpService, this._preferences);
  Future<Either<Failure, AuthResult>> login(String email, String password) async {
    final result = await _httpService.postData<AuthResult>(LoginParam(email, password));
    result.fold((l) => null, (r) async {
      await _preferences.setString(accessTokenKey, r.tokens.access.token);
      await _preferences.setString(refreshTokenKey, r.tokens.refresh.token);
    });
    return result;
  }
}
