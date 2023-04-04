import 'package:lettutor/core/infrastructure/request_param.dart';

class GetListCourseParam extends IParam {
  final int? page;
  final int? size;
  GetListCourseParam({this.page, this.size});
  @override
  Map<String, dynamic> get json => {};

  @override
  Map<String, dynamic>? get queryParam => {
        'page': page,
        'size': size,
      };

  @override
  String get link => 'course';
}
