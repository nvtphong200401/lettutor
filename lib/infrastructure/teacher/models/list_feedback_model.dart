// To parse this JSON data, do
//
//     final listFeedbackResult = listFeedbackResultFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lettutor/infrastructure/teacher/models/paginated_tutors.dart';

part 'list_feedback_model.freezed.dart';
part 'list_feedback_model.g.dart';

@freezed
class ListFeedbackResult with _$ListFeedbackResult {
  const factory ListFeedbackResult({
    String? message,
    Data? data,
  }) = _ListFeedbackResult;

  factory ListFeedbackResult.fromJson(Map<String, dynamic> json) =>
      _$ListFeedbackResultFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    int? count,
    List<FeedbackModel>? rows,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
