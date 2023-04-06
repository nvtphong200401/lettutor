import 'package:lettutor/core/infrastructure/request_param.dart';

class ToggleFavoriteParam extends IParam {
  final String tutorId;
  ToggleFavoriteParam(this.tutorId);
  @override
  Map<String, dynamic> get json => {
        'tutorId': tutorId,
      };

  @override
  String get link => 'user/manageFavoriteTutor';
}
