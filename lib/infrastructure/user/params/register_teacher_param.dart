import 'package:dio/dio.dart';
import 'package:lettutor/core/infrastructure/request_param.dart';

class RegisterTeacherParam extends IParam {
  final FormData formData;

  RegisterTeacherParam(this.formData);
  // RegisterTeacherParam(
  //     {required this.name,
  //     required this.avatar,
  //     required this.certificate,
  //     this.bio,
  //     this.country,
  //     this.education,
  //     this.experience,
  //     this.profession,
  //     this.languages,
  //     this.targetStudent,
  //     this.birthday,
  //     this.interests,
  //     this.specialties});

  @override
  dynamic get json => formData;
  // Map<String, dynamic> get json => {
  //       "interests": interests,
  //       "education": education,
  //       "experience": experience,
  //       "profession": profession,
  //       "languages": languages?.join(','),
  //       "bio": bio,
  //       "targetStudent": targetStudent,
  //       "specialties": specialties?.join(','),
  //       'birthday': birthday != null ? DateFormat('yyyy-MM-dd').format(birthday!) : null,
  //       'country': country,
  //       'certificate': certificate,
  //       'avatar': avatar,
  //       'name': name,
  //     };

  @override
  String get link => 'tutor/register';
}
