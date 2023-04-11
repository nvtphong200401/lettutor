import 'package:lettutor/core/infrastructure/request_param.dart';

class BookClassParam extends IParam {
  final String scheduleDetailId;
  final String note;
  BookClassParam(this.scheduleDetailId, this.note);

  @override
  Map<String, dynamic> get json => {
        'scheduleDetailIds': [scheduleDetailId],
        'note': note,
      };

  @override
  String get link => 'booking';
}
