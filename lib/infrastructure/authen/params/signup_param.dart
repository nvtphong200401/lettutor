import '../../../core/infrastructure/request_param.dart';

class SignupParam extends IParam {
  final String email;
  final String password;
  SignupParam(this.email, this.password);
  @override
  Map<String, dynamic> get json => {
        'email': email,
        'password': password,
      };

  @override
  String get link => 'auth/register';
}
