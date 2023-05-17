import 'package:lettutor/core/infrastructure/request_param.dart';

class GetListCourseParam extends IParam {
  final int? page;
  final int? size;
  final String? query;
  final List<String>? categories;
  GetListCourseParam({this.page, this.size, this.query, this.categories = const []});
  @override
  Map<String, dynamic> get json => {};

  @override
  Map<String, dynamic>? get queryParam =>
      {'page': page, 'size': size, 'q': query, 'categoryId[]': categories ?? []};

  @override
  String get link => 'course';
}
