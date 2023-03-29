import 'package:freezed_annotation/freezed_annotation.dart';

part 'tutor_detail_model.freezed.dart';
part 'tutor_detail_model.g.dart';

@freezed
class TutorDetail with _$TutorDetail {
  const TutorDetail._();
  const factory TutorDetail({
    String? video,
    @Default('') String bio,
    String? education,
    String? experience,
    String? profession,
    String? accent,
    String? targetStudent,
    String? interests,
    String? languages,
    String? specialties,
    double? rating,
    bool? isNative,
    required User user,
    @Default(false) bool isFavorite,
    double? avgRating,
    int? totalFeedback,
  }) = _TutorDetail;

  factory TutorDetail.fromJson(Map<String, dynamic> json) => _$TutorDetailFromJson(json);

  factory TutorDetail.init({String? id}) => TutorDetail.fromJson({
        'user': {
          'id': id ?? '1',
          'name': 'Joan Gacer',
          'avatar':
              'https://api.app.lettutor.com/avatar/8c4e58c4-e9d1-4353-b64d-41b573c5a3e9avatar1632284832414.jpg',
          'bio':
              'Hello! My name is April Baldo, you can just call me Teacher April. I am an English teacher and currently teaching in senior high school. I have been teaching grammar and literature for almost 10 years. I am fond of reading and teaching literature as one way of knowing one’s beliefs and culture. I am friendly and full of positivity. I love teaching because I know each student has something to bring on. Molding them to become an individual is a great success.',
          'isFavorite': true,
        },
      });
}

@freezed
class User with _$User {
  const factory User({
    required String id,
    String? level,
    @Default('https://api.app.lettutor.com/avatar/8c4e58c4-e9d1-4353-b64d-41b573c5a3e9avatar1632284832414.jpg')
        String avatar,
    @Default('') String name,
    String? country,
    String? language,
    bool? isPublicRecord,
    String? caredByStaffId,
    String? studentGroupId,
    List<Course>? courses,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Course with _$Course {
  const factory Course({
    String? id,
    String? name,
    TutorCourse? tutorCourse,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}

@freezed
class TutorCourse with _$TutorCourse {
  const factory TutorCourse({
    String? userId,
    String? courseId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _TutorCourse;

  factory TutorCourse.fromJson(Map<String, dynamic> json) => _$TutorCourseFromJson(json);
}
