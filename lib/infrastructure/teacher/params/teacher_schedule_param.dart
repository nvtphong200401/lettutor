import 'package:lettutor/core/infrastructure/request_param.dart';

class TeacherScheduleParam extends IParam {
  final String tutorId;
  TeacherScheduleParam(this.tutorId);
  @override
  Map<String, dynamic> get json => {};

  @override
  Map<String, dynamic>? get queryParam {
    return {
      'tutorId': tutorId,
      'startTimestamp': DateTime.now().millisecondsSinceEpoch,
      'endTimestamp': DateTime.now().add(const Duration(days: 5)).millisecondsSinceEpoch,
    };
  }

  @override
  String get link => 'schedule';
}
