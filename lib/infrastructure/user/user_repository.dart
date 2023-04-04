import 'package:dartz/dartz.dart';
import 'package:lettutor/core/infrastructure/failure.dart';
import 'package:lettutor/infrastructure/user/models/user_model.dart';
import 'package:lettutor/infrastructure/user/params/get_user_info_param.dart';
import 'package:lettutor/service/http_service.dart';

class UserRepository {
  final HttpService _httpService;
  UserRepository(this._httpService);

  Future<Either<Failure, UserModel>> getUserInfo() async {
    return _httpService.getData<UserModel>(GetUserInfoParam());
  }
}
