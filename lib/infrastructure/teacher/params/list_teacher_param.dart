import 'package:lettutor/core/infrastructure/request_param.dart';

class GetListTeacherParam extends IParam {
  final int perPage;
  final int page;
  GetListTeacherParam(this.perPage, this.page);
  @override
  Map<String, dynamic> get json => {"studentRequest": "I would like to have free talk session"};

  @override
  String get link => 'tutor/more';

  @override
  // TODO: implement queryParam
  Map<String, dynamic>? get queryParam => {
        'perPage': perPage,
        'page': page,
      };
}
