// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutor_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TutorDetail _$$_TutorDetailFromJson(Map<String, dynamic> json) =>
    _$_TutorDetail(
      video: json['video'] as String?,
      bio: json['bio'] as String? ?? '',
      education: json['education'] as String?,
      experience: json['experience'] as String?,
      profession: json['profession'] as String?,
      accent: json['accent'] as String?,
      targetStudent: json['targetStudent'] as String?,
      interests: json['interests'] as String?,
      languages: json['languages'] as String?,
      specialties: json['specialties'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      isNative: json['isNative'] as bool?,
      user: User.fromJson(json['User'] as Map<String, dynamic>),
      isFavorite: json['isFavorite'] as bool? ?? false,
      avgRating: (json['avgRating'] as num?)?.toDouble(),
      totalFeedback: json['totalFeedback'] as int?,
    );

Map<String, dynamic> _$$_TutorDetailToJson(_$_TutorDetail instance) =>
    <String, dynamic>{
      'video': instance.video,
      'bio': instance.bio,
      'education': instance.education,
      'experience': instance.experience,
      'profession': instance.profession,
      'accent': instance.accent,
      'targetStudent': instance.targetStudent,
      'interests': instance.interests,
      'languages': instance.languages,
      'specialties': instance.specialties,
      'rating': instance.rating,
      'isNative': instance.isNative,
      'User': instance.user,
      'isFavorite': instance.isFavorite,
      'avgRating': instance.avgRating,
      'totalFeedback': instance.totalFeedback,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      level: json['level'] as String?,
      avatar: json['avatar'] as String? ??
          'https://api.app.lettutor.com/avatar/8c4e58c4-e9d1-4353-b64d-41b573c5a3e9avatar1632284832414.jpg',
      name: json['name'] as String? ?? '',
      country: json['country'] as String?,
      language: json['language'] as String?,
      isPublicRecord: json['isPublicRecord'] as bool?,
      caredByStaffId: json['caredByStaffId'] as String?,
      studentGroupId: json['studentGroupId'] as String?,
      courses: (json['courses'] as List<dynamic>?)
          ?.map((e) => Course.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'level': instance.level,
      'avatar': instance.avatar,
      'name': instance.name,
      'country': instance.country,
      'language': instance.language,
      'isPublicRecord': instance.isPublicRecord,
      'caredByStaffId': instance.caredByStaffId,
      'studentGroupId': instance.studentGroupId,
      'courses': instance.courses,
    };

_$_Course _$$_CourseFromJson(Map<String, dynamic> json) => _$_Course(
      id: json['id'] as String?,
      name: json['name'] as String?,
      tutorCourse: json['tutorCourse'] == null
          ? null
          : TutorCourse.fromJson(json['tutorCourse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CourseToJson(_$_Course instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tutorCourse': instance.tutorCourse,
    };

_$_TutorCourse _$$_TutorCourseFromJson(Map<String, dynamic> json) =>
    _$_TutorCourse(
      userId: json['userId'] as String?,
      courseId: json['courseId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_TutorCourseToJson(_$_TutorCourse instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'courseId': instance.courseId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
