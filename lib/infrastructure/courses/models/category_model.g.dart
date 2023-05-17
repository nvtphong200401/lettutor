// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListCategoryResult _$$_ListCategoryResultFromJson(
        Map<String, dynamic> json) =>
    _$_ListCategoryResult(
      count: json['count'] as int?,
      rows: (json['rows'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListCategoryResultToJson(
        _$_ListCategoryResult instance) =>
    <String, dynamic>{
      'count': instance.count,
      'rows': instance.rows,
    };
