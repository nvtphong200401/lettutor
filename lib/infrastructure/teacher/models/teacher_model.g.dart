// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TeacherModel _$$_TeacherModelFromJson(Map<String, dynamic> json) =>
    _$_TeacherModel(
      name: json['name'] as String?,
      avatar: json['avatar'] as String? ??
          'https://i0.wp.com/sbcf.fr/wp-content/uploads/2018/03/sbcf-default-avatar.png',
      video: json['video'] as String?,
      bio: json['bio'] as String?,
    );

Map<String, dynamic> _$$_TeacherModelToJson(_$_TeacherModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'avatar': instance.avatar,
      'video': instance.video,
      'bio': instance.bio,
    };
