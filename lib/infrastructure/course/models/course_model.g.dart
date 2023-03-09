// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CourseModel _$$_CourseModelFromJson(Map<String, dynamic> json) =>
    _$_CourseModel(
      name: json['name'] as String?,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      level: json['level'] as String?,
    );

Map<String, dynamic> _$$_CourseModelToJson(_$_CourseModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'level': instance.level,
    };
