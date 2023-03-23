import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_model.freezed.dart';
part 'teacher_model.g.dart';

@freezed
class TeacherModel with _$TeacherModel {
  const TeacherModel._();
  const factory TeacherModel({
    @Default('') String id,
    @Default('') String name,
    @Default('https://i0.wp.com/sbcf.fr/wp-content/uploads/2018/03/sbcf-default-avatar.png')
        String avatar,
    @Default('') String video,
    @Default('') String bio,
    @Default(false) bool isFavorite,
  }) = _TeacherModel;
  factory TeacherModel.fromJson(Map<String, dynamic> json) => _$TeacherModelFromJson(json);

  factory TeacherModel.init({String? id}) => TeacherModel.fromJson({
        'id': id ?? '1',
        'name': 'Joan Gacer',
        'avatar':
            'https://api.app.lettutor.com/avatar/8c4e58c4-e9d1-4353-b64d-41b573c5a3e9avatar1632284832414.jpg',
        'bio':
            'Hello! My name is April Baldo, you can just call me Teacher April. I am an English teacher and currently teaching in senior high school. I have been teaching grammar and literature for almost 10 years. I am fond of reading and teaching literature as one way of knowing one’s beliefs and culture. I am friendly and full of positivity. I love teaching because I know each student has something to bring on. Molding them to become an individual is a great success.',
        'isFavorite': true,
      });
}
