// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookingModel _$$_BookingModelFromJson(Map<String, dynamic> json) =>
    _$_BookingModel(
      startTime: json['startTime'] as String? ?? '00:00',
      endTime: json['endTime'] as String? ?? '00:00',
      tutorInfo: json['tutorInfo'] == null
          ? null
          : TutorDetail.fromJson(json['tutorInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BookingModelToJson(_$_BookingModel instance) =>
    <String, dynamic>{
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'tutorInfo': instance.tutorInfo,
    };
