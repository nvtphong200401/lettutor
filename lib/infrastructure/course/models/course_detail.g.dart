// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CourseDetail _$$_CourseDetailFromJson(Map<String, dynamic> json) =>
    _$_CourseDetail(
      message: json['message'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CourseDetailToJson(_$_CourseDetail instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      level: json['level'] as String,
      reason: json['reason'] as String,
      purpose: json['purpose'] as String,
      otherDetails: json['otherDetails'] as String,
      defaultPrice: json['defaultPrice'] as int,
      coursePrice: json['coursePrice'] as int,
      courseType: json['courseType'],
      sectionType: json['sectionType'],
      visible: json['visible'] as bool,
      displayOrder: json['displayOrder'],
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      topics: (json['topics'] as List<dynamic>)
          .map((e) => Topic.fromJson(e as Map<String, dynamic>))
          .toList(),
      users: json['users'] as List<dynamic>,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'level': instance.level,
      'reason': instance.reason,
      'purpose': instance.purpose,
      'otherDetails': instance.otherDetails,
      'defaultPrice': instance.defaultPrice,
      'coursePrice': instance.coursePrice,
      'courseType': instance.courseType,
      'sectionType': instance.sectionType,
      'visible': instance.visible,
      'displayOrder': instance.displayOrder,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'topics': instance.topics,
      'users': instance.users,
    };

_$_Topic _$$_TopicFromJson(Map<String, dynamic> json) => _$_Topic(
      id: json['id'] as String,
      courseId: json['courseId'] as String,
      orderCourse: json['orderCourse'] as int,
      name: json['name'] as String,
      nameFile: json['nameFile'] as String,
      numberOfPages: json['numberOfPages'],
      description: json['description'] as String,
      videoUrl: json['videoUrl'],
      type: json['type'],
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$_TopicToJson(_$_Topic instance) => <String, dynamic>{
      'id': instance.id,
      'courseId': instance.courseId,
      'orderCourse': instance.orderCourse,
      'name': instance.name,
      'nameFile': instance.nameFile,
      'numberOfPages': instance.numberOfPages,
      'description': instance.description,
      'videoUrl': instance.videoUrl,
      'type': instance.type,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
