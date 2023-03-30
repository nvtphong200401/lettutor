// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_tutors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginatedTutors _$$_PaginatedTutorsFromJson(Map<String, dynamic> json) =>
    _$_PaginatedTutors(
      tutors: Tutors.fromJson(json['tutors'] as Map<String, dynamic>),
      favoriteTutor: (json['favoriteTutor'] as List<dynamic>)
          .map((e) => FavoriteTutor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PaginatedTutorsToJson(_$_PaginatedTutors instance) =>
    <String, dynamic>{
      'tutors': instance.tutors,
      'favoriteTutor': instance.favoriteTutor,
    };

_$_FavoriteTutor _$$_FavoriteTutorFromJson(Map<String, dynamic> json) =>
    _$_FavoriteTutor(
      id: json['id'] as String,
      firstId: json['firstId'] as String?,
      secondId: json['secondId'] as String?,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      secondInfo: json['secondInfo'] == null
          ? null
          : SecondInfo.fromJson(json['secondInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FavoriteTutorToJson(_$_FavoriteTutor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstId': instance.firstId,
      'secondId': instance.secondId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'secondInfo': instance.secondInfo,
    };

_$_SecondInfo _$$_SecondInfoFromJson(Map<String, dynamic> json) =>
    _$_SecondInfo(
      id: json['id'] as String?,
      level: json['level'] as String?,
      email: json['email'] as String?,
      google: json['google'] as String?,
      facebook: json['facebook'] as String?,
      apple: json['apple'] as String?,
      avatar: json['avatar'] as String?,
      name: json['name'] as String?,
      country: json['country'] as String?,
      phone: json['phone'] as String?,
      language: json['language'] as String?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      requestPassword: json['requestPassword'] as bool?,
      isActivated: json['isActivated'] as bool?,
      isPhoneActivated: json['isPhoneActivated'] as String?,
      requireNote: json['requireNote'] as String?,
      timezone: json['timezone'] as int?,
      phoneAuth: json['phoneAuth'] as String?,
      isPhoneAuthActivated: json['isPhoneAuthActivated'] as bool?,
      studySchedule: json['studySchedule'] as String?,
      canSendMessage: json['canSendMessage'] as bool?,
      isPublicRecord: json['isPublicRecord'] as bool?,
      caredByStaffId: json['caredByStaffId'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      deletedAt: json['deletedAt'] as String?,
      studentGroupId: json['studentGroupId'] as String?,
      tutorInfo: TutorInfo.fromJson(json['tutorInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SecondInfoToJson(_$_SecondInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'level': instance.level,
      'email': instance.email,
      'google': instance.google,
      'facebook': instance.facebook,
      'apple': instance.apple,
      'avatar': instance.avatar,
      'name': instance.name,
      'country': instance.country,
      'phone': instance.phone,
      'language': instance.language,
      'birthday': instance.birthday?.toIso8601String(),
      'requestPassword': instance.requestPassword,
      'isActivated': instance.isActivated,
      'isPhoneActivated': instance.isPhoneActivated,
      'requireNote': instance.requireNote,
      'timezone': instance.timezone,
      'phoneAuth': instance.phoneAuth,
      'isPhoneAuthActivated': instance.isPhoneAuthActivated,
      'studySchedule': instance.studySchedule,
      'canSendMessage': instance.canSendMessage,
      'isPublicRecord': instance.isPublicRecord,
      'caredByStaffId': instance.caredByStaffId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
      'studentGroupId': instance.studentGroupId,
      'tutorInfo': instance.tutorInfo,
    };

_$_TutorInfo _$$_TutorInfoFromJson(Map<String, dynamic> json) => _$_TutorInfo(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      video: json['video'] as String?,
      bio: json['bio'] as String?,
      education: json['education'] as String?,
      experience: json['experience'] as String?,
      profession: json['profession'] as String?,
      accent: json['accent'] as String?,
      targetStudent: json['targetStudent'] as String?,
      interests: json['interests'] as String?,
      languages: json['languages'] as String?,
      specialties: json['specialties'] as String?,
      resume: json['resume'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      isActivated: json['isActivated'] as bool?,
      isNative: json['isNative'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_TutorInfoToJson(_$_TutorInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
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
      'resume': instance.resume,
      'rating': instance.rating,
      'isActivated': instance.isActivated,
      'isNative': instance.isNative,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_Tutors _$$_TutorsFromJson(Map<String, dynamic> json) => _$_Tutors(
      count: json['count'] as int,
      rows: (json['rows'] as List<dynamic>)
          .map((e) => TeacherModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TutorsToJson(_$_Tutors instance) => <String, dynamic>{
      'count': instance.count,
      'rows': instance.rows,
    };

_$_TeacherModel _$$_TeacherModelFromJson(Map<String, dynamic> json) =>
    _$_TeacherModel(
      level: json['level'] as String?,
      email: json['email'] as String?,
      google: json['google'] as String?,
      facebook: json['facebook'] as String?,
      apple: json['apple'] as String?,
      avatar: json['avatar'] as String? ??
          'https://thumbs.dreamstime.com/z/default-avatar-profile-vector-user-profile-default-avatar-profile-vector-user-profile-profile-179376714.jpg',
      name: json['name'] as String?,
      country: json['country'] as String?,
      phone: json['phone'] as String?,
      language: json['language'] as String?,
      birthday: json['birthday'] as String?,
      requestPassword: json['requestPassword'] as bool?,
      isActivated: json['isActivated'] as bool?,
      isPhoneActivated: json['isPhoneActivated'] as String?,
      requireNote: json['requireNote'] as String?,
      timezone: json['timezone'] as int?,
      phoneAuth: json['phoneAuth'] as String?,
      isPhoneAuthActivated: json['isPhoneAuthActivated'] as bool?,
      studySchedule: json['studySchedule'] as String?,
      canSendMessage: json['canSendMessage'] as bool?,
      isPublicRecord: json['isPublicRecord'] as bool?,
      caredByStaffId: json['caredByStaffId'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      deletedAt: json['deletedAt'] as String?,
      studentGroupId: json['studentGroupId'] as String?,
      feedbacks: (json['feedbacks'] as List<dynamic>?)
          ?.map((e) => Feedback.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      video: json['video'] as String?,
      bio: json['bio'] as String?,
      education: json['education'] as String?,
      experience: json['experience'] as String?,
      profession: json['profession'] as String?,
      accent: json['accent'] as String?,
      targetStudent: json['targetStudent'] as String?,
      interests: json['interests'] as String?,
      languages: json['languages'] as String?,
      specialties: json['specialties'] as String?,
      resume: json['resume'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      isNative: json['isNative'] as bool?,
      price: json['price'] as int?,
      isOnline: json['isOnline'] as bool?,
      isFavorite: json['isFavorite'] as bool?,
    );

Map<String, dynamic> _$$_TeacherModelToJson(_$_TeacherModel instance) =>
    <String, dynamic>{
      'level': instance.level,
      'email': instance.email,
      'google': instance.google,
      'facebook': instance.facebook,
      'apple': instance.apple,
      'avatar': instance.avatar,
      'name': instance.name,
      'country': instance.country,
      'phone': instance.phone,
      'language': instance.language,
      'birthday': instance.birthday,
      'requestPassword': instance.requestPassword,
      'isActivated': instance.isActivated,
      'isPhoneActivated': instance.isPhoneActivated,
      'requireNote': instance.requireNote,
      'timezone': instance.timezone,
      'phoneAuth': instance.phoneAuth,
      'isPhoneAuthActivated': instance.isPhoneAuthActivated,
      'studySchedule': instance.studySchedule,
      'canSendMessage': instance.canSendMessage,
      'isPublicRecord': instance.isPublicRecord,
      'caredByStaffId': instance.caredByStaffId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
      'studentGroupId': instance.studentGroupId,
      'feedbacks': instance.feedbacks,
      'id': instance.id,
      'userId': instance.userId,
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
      'resume': instance.resume,
      'rating': instance.rating,
      'isNative': instance.isNative,
      'price': instance.price,
      'isOnline': instance.isOnline,
      'isFavorite': instance.isFavorite,
    };

_$_Feedback _$$_FeedbackFromJson(Map<String, dynamic> json) => _$_Feedback(
      id: json['id'] as String,
      bookingId: json['bookingId'] as String?,
      firstId: json['firstId'] as String?,
      secondId: json['secondId'] as String?,
      rating: json['rating'] as int?,
      content: json['content'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      firstInfo: json['firstInfo'] == null
          ? null
          : FirstInfo.fromJson(json['firstInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FeedbackToJson(_$_Feedback instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookingId': instance.bookingId,
      'firstId': instance.firstId,
      'secondId': instance.secondId,
      'rating': instance.rating,
      'content': instance.content,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'firstInfo': instance.firstInfo,
    };

_$_FirstInfo _$$_FirstInfoFromJson(Map<String, dynamic> json) => _$_FirstInfo(
      level: json['level'] as String?,
      email: json['email'] as String?,
      google: json['google'] as String?,
      facebook: json['facebook'] as String?,
      apple: json['apple'] as String?,
      avatar: json['avatar'] as String?,
      name: json['name'] as String?,
      country: json['country'] as String?,
      phone: json['phone'] as String?,
      language: json['language'] as String?,
      birthday: json['birthday'] as String?,
      requestPassword: json['requestPassword'] as bool?,
      isActivated: json['isActivated'] as bool?,
      isPhoneActivated: json['isPhoneActivated'] as bool?,
      requireNote: json['requireNote'] as String?,
      timezone: json['timezone'] as int?,
      phoneAuth: json['phoneAuth'] as String?,
      isPhoneAuthActivated: json['isPhoneAuthActivated'] as bool?,
      studySchedule: json['studySchedule'] as String?,
      canSendMessage: json['canSendMessage'] as bool?,
      isPublicRecord: json['isPublicRecord'] as bool?,
      caredByStaffId: json['caredByStaffId'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      deletedAt: json['deletedAt'] as String?,
      studentGroupId: json['studentGroupId'] as String?,
    );

Map<String, dynamic> _$$_FirstInfoToJson(_$_FirstInfo instance) =>
    <String, dynamic>{
      'level': instance.level,
      'email': instance.email,
      'google': instance.google,
      'facebook': instance.facebook,
      'apple': instance.apple,
      'avatar': instance.avatar,
      'name': instance.name,
      'country': instance.country,
      'phone': instance.phone,
      'language': instance.language,
      'birthday': instance.birthday,
      'requestPassword': instance.requestPassword,
      'isActivated': instance.isActivated,
      'isPhoneActivated': instance.isPhoneActivated,
      'requireNote': instance.requireNote,
      'timezone': instance.timezone,
      'phoneAuth': instance.phoneAuth,
      'isPhoneAuthActivated': instance.isPhoneAuthActivated,
      'studySchedule': instance.studySchedule,
      'canSendMessage': instance.canSendMessage,
      'isPublicRecord': instance.isPublicRecord,
      'caredByStaffId': instance.caredByStaffId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
      'studentGroupId': instance.studentGroupId,
    };
