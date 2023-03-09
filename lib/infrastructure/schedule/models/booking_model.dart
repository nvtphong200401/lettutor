import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lettutor/infrastructure/teacher/models/teacher_model.dart';

part 'booking_model.freezed.dart';
part 'booking_model.g.dart';

@freezed
class BookingModel with _$BookingModel {
  const BookingModel._();
  const factory BookingModel({
    @Default('00:00') String startTime,
    @Default('00:00') String endTime,
    @Default(TeacherModel()) TeacherModel? tutorInfo,
  }) = _BookingModel;
  factory BookingModel.fromJson(Map<String, dynamic> json) => _$BookingModelFromJson(json);

  factory BookingModel.init() => BookingModel.fromJson({
        'startTime': '08:30',
        'endTime': '09:30',
        'tutorInfo': TeacherModel.init().toJson(),
      });
}
