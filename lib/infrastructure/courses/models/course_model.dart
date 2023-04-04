// To parse this JSON data, do
//
//     final listCoursesResult = listCoursesResultFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_model.freezed.dart';
part 'course_model.g.dart';

@freezed
class ListCoursesResult with _$ListCoursesResult {
  const factory ListCoursesResult({
    String? message,
    Data? data,
  }) = _ListCoursesResult;

  factory ListCoursesResult.fromJson(Map<String, dynamic> json) =>
      _$ListCoursesResultFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    int? count,
    List<CourseModel>? rows,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class CourseModel with _$CourseModel {
  const factory CourseModel({
    String? id,
    String? name,
    String? description,
    String? imageUrl,
    String? level,
    String? reason,
    String? purpose,
    String? otherDetails,
    int? defaultPrice,
    int? coursePrice,
    String? courseType,
    String? sectionType,
    bool? visible,
    String? displayOrder,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<Topic>? topics,
    List<Category>? categories,
  }) = _CourseModel;

  factory CourseModel.fromJson(Map<String, dynamic> json) => _$CourseModelFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    String? id,
    String? title,
    String? description,
    String? key,
    String? displayOrder,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}

@freezed
class Topic with _$Topic {
  const factory Topic({
    String? id,
    String? courseId,
    int? orderCourse,
    String? name,
    String? nameFile,
    int? numberOfPages,
    String? description,
    String? videoUrl,
    String? type,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Topic;

  factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);
}
