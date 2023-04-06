import 'package:lettutor/core/infrastructure/request_param.dart';

class BookClassParam extends IParam {
  final String scheduleDetailId;
  BookClassParam(this.scheduleDetailId);

  @override
  Map<String, dynamic> get json => {
        'scheduleDetailIds': [scheduleDetailId]
      };

  @override
  String get link => 'booking';
}
