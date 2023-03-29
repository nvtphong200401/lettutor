import 'package:lettutor/core/infrastructure/request_param.dart';

class LoginParam extends IParam {
  final String email;
  final String password;
  LoginParam(this.email, this.password);
  @override
  Map<String, dynamic> get json => {
        'email': email,
        'password': password,
      };

  @override
  String get link => 'auth/login';
}
