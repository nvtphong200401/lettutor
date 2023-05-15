import 'package:lettutor/core/infrastructure/request_param.dart';

class CancelScheduleParam extends IParam {
  final int reasonID;
  final String scheduleDetailID;
  CancelScheduleParam(this.reasonID, this.scheduleDetailID);

  @override
  Map<String, dynamic> get json => {
        'cancelInfo': {'cancelReasonId': reasonID},
        'scheduleDetailId': scheduleDetailID,
      };

  @override
  String get link => 'booking/schedule-detail';
}
