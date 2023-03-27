// To parse this JSON data, do
//
//     final courseDetail = courseDetailFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_detail.freezed.dart';
part 'course_detail.g.dart';

@freezed
class CourseDetail with _$CourseDetail {
  const factory CourseDetail({
    required String message,
    required Data data,
  }) = _CourseDetail;

  factory CourseDetail.fromJson(Map<String, dynamic> json) =>
      _$CourseDetailFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required String id,
    required String name,
    required String description,
    required String imageUrl,
    required String level,
    required String reason,
    required String purpose,
    required String otherDetails,
    required int defaultPrice,
    required int coursePrice,
    required dynamic courseType,
    required dynamic sectionType,
    required bool visible,
    required dynamic displayOrder,
    required String createdAt,
    required String updatedAt,
    required List<Topic> topics,
    required List<dynamic> users,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Topic with _$Topic {
  const factory Topic({
    required String id,
    required String courseId,
    required int orderCourse,
    required String name,
    required String nameFile,
    required dynamic numberOfPages,
    required String description,
    required dynamic videoUrl,
    required dynamic type,
    required String createdAt,
    required String updatedAt,
  }) = _Topic;

  factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);
}
