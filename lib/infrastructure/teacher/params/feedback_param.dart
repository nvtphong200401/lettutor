import 'package:lettutor/core/infrastructure/request_param.dart';

class FeedbackParam extends IParam {
  final String tutorId;
  final int page;
  final int perPage;
  FeedbackParam({required this.tutorId, this.page = 1, this.perPage = 12});
  @override
  Map<String, dynamic> get json => {};
  @override
  Map<String, dynamic>? get queryParam => {'page': page, 'perPage': perPage};

  @override
  String get link => 'feedback/v2/$tutorId';
}
