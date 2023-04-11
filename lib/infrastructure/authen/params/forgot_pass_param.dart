import 'package:lettutor/core/infrastructure/request_param.dart';

class ForgotPasswordParam extends IParam {
  final String email;
  ForgotPasswordParam(this.email);
  @override
  Map<String, dynamic> get json => {
        'email': email,
      };

  @override
  String get link => 'user/forgotPassword';
}
