import 'package:lettutor/core/infrastructure/request_param.dart';

class GetDetailTeacherParam extends IParam {
  final String tutorId;
  GetDetailTeacherParam(this.tutorId);
  @override
  Map<String, dynamic> get json => {'tutorId': tutorId};

  @override
  String get link => 'tutor/$tutorId';
}
