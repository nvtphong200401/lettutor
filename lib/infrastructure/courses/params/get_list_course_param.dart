import 'package:lettutor/core/infrastructure/request_param.dart';

class GetListCourseParam extends IParam {
  final int? page;
  final int? size;
  final String? query;
  GetListCourseParam({this.page, this.size, this.query});
  @override
  Map<String, dynamic> get json => {};

  @override
  Map<String, dynamic>? get queryParam => {'page': page, 'size': size, 'q': query};

  @override
  String get link => 'course';
}
