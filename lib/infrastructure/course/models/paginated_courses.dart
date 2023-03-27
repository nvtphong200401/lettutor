// To parse this JSON data, do
//
//     final paginatedCourses = paginatedCoursesFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_courses.freezed.dart';
part 'paginated_courses.g.dart';

@freezed
class PaginatedCourses with _$PaginatedCourses {
  const factory PaginatedCourses({
    required String message,
    required Data data,
  }) = _PaginatedCourses;

  factory PaginatedCourses.fromJson(Map<String, dynamic> json) =>
      _$PaginatedCoursesFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required int count,
    required List<Row> rows,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Row with _$Row {
  const factory Row({
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
    required List<Category> categories,
  }) = _Row;

  factory Row.fromJson(Map<String, dynamic> json) => _$RowFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    required String id,
    required String title,
    required dynamic description,
    required String key,
    required dynamic displayOrder,
    required String createdAt,
    required String updatedAt,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
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
