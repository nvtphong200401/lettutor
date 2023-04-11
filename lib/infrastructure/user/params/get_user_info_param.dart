import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:lettutor/core/infrastructure/request_param.dart';

class GetUserInfoParam extends IParam {
  @override
  Map<String, dynamic> get json => {};

  @override
  String get link => 'user/info';
}

class UpdateUserInfoParam extends IParam {
  final String? name;
  final String? country;
  final String? phone;
  final DateTime? birthday;
  final String? level;
  final List<String>? learnTopics;
  final String? studySchedule;
  UpdateUserInfoParam(
      {this.name,
      this.birthday,
      this.country,
      this.learnTopics,
      this.level,
      this.phone,
      this.studySchedule});

  @override
  Map<String, dynamic> get json => {
        'name': name,
        'country': country,
        'phone': phone,
        'birthday': birthday != null ? DateFormat('yyyy-MM-dd').format(birthday!) : null,
        'level': level,
        'learnTopics': learnTopics,
        'studySchedule': studySchedule,
      };

  @override
  String get link => 'user/info';
}

class ChangeAvatarParam extends IParam {
  final FormData formData;
  ChangeAvatarParam(this.formData);
  @override
  dynamic get json => formData;

  @override
  String get link => 'user/uploadAvatar';
}
