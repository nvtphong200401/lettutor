import 'package:lettutor/core/infrastructure/request_param.dart';

class GetUserInfoParam extends IParam {
  @override
  Map<String, dynamic> get json => {};

  @override
  String get link => 'user/info';
}
