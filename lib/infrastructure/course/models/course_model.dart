import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_model.freezed.dart';
part 'course_model.g.dart';

@freezed
class CourseModel with _$CourseModel {
  const CourseModel._();
  const factory CourseModel({
    String? name,
    String? description,
    String? imageUrl,
    String? level,
  }) = _CourseModel;
  factory CourseModel.fromJson(Map<String, dynamic> json) => _$CourseModelFromJson(json);

  factory CourseModel.init() => CourseModel.fromJson({
        'name': 'Life in the Internet Age',
        'description': 'Let\'s discuss how technology is changing the way we live',
        'imageUrl':
            'https://camblycurriculumicons.s3.amazonaws.com/5e0e8b212ac750e7dc9886ac?h=d41d8cd98f00b204e9800998ecf8427e',
        'level': 'Intermediate'
      });
}
