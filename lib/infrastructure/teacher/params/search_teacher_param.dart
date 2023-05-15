import 'package:lettutor/core/infrastructure/request_param.dart';

import '../../../core/presentation/common_widgets/constant.dart';

class SearchTeacherParam extends IParam {
  final String? keyword;
  final List<String>? specialties;
  final int page;
  final String? nationality;
  SearchTeacherParam({this.keyword, this.specialties = const [], this.nationality, this.page = 1});
  @override
  Map<String, dynamic> get json => {
        'search': keyword,
        'filters': {
          'specialties': specialties,
        },
        'page': page.toString(),
        'perPage': 9,
        'nationality': getNationality()
      };
  Map<String, bool>? getNationality() {
    if (nationality != null) {
      if (nationality == tutorNationality[0]) {
        return {
          'isVietnamese': true,
        };
      }
      if (nationality == tutorNationality[2]) {
        return {'isNative': true};
      } else {
        return {'isVietnamese': false, 'isNative': false};
      }
    }
    return null;
  }

  @override
  String get link => 'tutor/search';
}
