import 'package:lettutor/core/infrastructure/request_param.dart';

class SearchTeacherParam extends IParam {
  final String keyword;
  SearchTeacherParam(this.keyword);
  @override
  Map<String, dynamic> get json => {
        'search': keyword,
      };

  @override
  String get link => 'tutor/search';
}
