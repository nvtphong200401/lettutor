import 'package:lettutor/core/infrastructure/request_param.dart';

class SearchTeacherParam extends IParam {
  final String? keyword;
  final List<String>? specialties;
  final int page;
  SearchTeacherParam({this.keyword, this.specialties = const [], this.page = 1});
  @override
  Map<String, dynamic> get json => {
        'search': keyword,
        'filters': {
          'specialties': specialties,
        },
        'page': page.toString(),
        'perPage': 9,
      };

  @override
  String get link => 'tutor/search';
}
