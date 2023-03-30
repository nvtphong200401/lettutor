import 'package:lettutor/core/infrastructure/request_param.dart';

class GetListScheduleParam extends IParam {
  final int? page;
  final int? perPage;
  GetListScheduleParam({this.page, this.perPage});
  @override
  Map<String, dynamic> get json => {};
  @override
  Map<String, dynamic>? get queryParam => {
        'page': page,
        'perPage': perPage,
      };

  @override
  String get link => 'booking/list/student';
}
