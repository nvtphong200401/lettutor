// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_feedback_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListFeedbackResult _$$_ListFeedbackResultFromJson(
        Map<String, dynamic> json) =>
    _$_ListFeedbackResult(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ListFeedbackResultToJson(
        _$_ListFeedbackResult instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      count: json['count'] as int?,
      rows: (json['rows'] as List<dynamic>?)
          ?.map((e) => FeedbackModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'count': instance.count,
      'rows': instance.rows,
    };
