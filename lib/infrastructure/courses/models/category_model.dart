import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lettutor/infrastructure/courses/models/course_model.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class ListCategoryResult with _$ListCategoryResult {
  const ListCategoryResult._();
  const factory ListCategoryResult({
    int? count,
    List<Category>? rows,
  }) = _ListCategoryResult;
  factory ListCategoryResult.fromJson(Map<String, dynamic> json) =>
      _$ListCategoryResultFromJson(json);
}
