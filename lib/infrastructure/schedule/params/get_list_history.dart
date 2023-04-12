import '../../../core/infrastructure/request_param.dart';

class GetListHistoryParam extends IParam {
  final int? page;
  final int? perPage;
  GetListHistoryParam({this.page, this.perPage});
  @override
  Map<String, dynamic> get json => {};
  @override
  Map<String, dynamic>? get queryParam => {
        'page': page,
        'perPage': perPage,
        'orderBy': 'meeting',
        'dateTimeLte': DateTime.now().toUtc().millisecondsSinceEpoch,
        'sortBy': 'desc',
      };

  @override
  String get link => 'booking/list/student';
}
