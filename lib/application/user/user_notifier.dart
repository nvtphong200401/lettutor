import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:lettutor/core/infrastructure/failure.dart';
import 'package:lettutor/infrastructure/user/models/user_model.dart';
import 'package:lettutor/infrastructure/user/params/get_user_info_param.dart';
import 'package:lettutor/infrastructure/user/params/register_teacher_param.dart';
import 'package:lettutor/infrastructure/user/user_repository.dart';

class UserNotifier extends StateNotifier<AsyncValue<UserModel>> {
  UserNotifier(this._userRepository) : super(const AsyncLoading());
  final UserRepository _userRepository;

  Future<Either<Failure, UserModel>> getUserInfo() async {
    state = const AsyncLoading();
    final result = await _userRepository.getUserInfo();
    state = result.fold(
        (l) => AsyncError(l.message.toString(), StackTrace.current), (r) => AsyncData(r));
    return result;
  }

  Future<Either<Failure, Unit>> changeUserInfo(
      {String? name,
      String? country,
      DateTime? birthday,
      String? level,
      List<String>? learnTopics,
      String? studySchedule}) async {
    final result = await _userRepository.updateUserInfo(UpdateUserInfoParam(
        name: name,
        birthday: birthday,
        level: level,
        learnTopics: [],
        studySchedule: studySchedule));
    return result.fold((l) => left(l), (r) {
      final user = state.asData?.value.user;

      if (user != null) {
        state = AsyncData(UserModel(
            user: user.copyWith(
                name: name,
                country: country,
                birthday: birthday,
                level: level,
                studySchedule: studySchedule)));
      }
      return right(r);
    });
  }

  Future<Either<Failure, Unit>> changeUserAvatar(XFile image) async {
    final param =
        ChangeAvatarParam(FormData.fromMap({'avatar': await MultipartFile.fromFile(image.path)}));
    final result = await _userRepository.changeUserAvatar(param);
    return result.fold((l) => left(l), (r) {
      final user = state.asData?.value.user;

      if (user != null) {
        state = AsyncData(UserModel(user: user.copyWith(avatar: r.avatar)));
      }
      return right(unit);
    });
  }

  Future<Either<Failure, Unit>> registerTutor(
      {required String name,
      required XFile avatar,
      required PlatformFile certificate,
      String? country,
      DateTime? birthday,
      String? interests,
      String? education,
      String? experience,
      String? profession,
      String? languages,
      String? bio,
      String? targetStudent,
      List<String>? specialties}) async {
    final param = RegisterTeacherParam(FormData.fromMap({
      "interests": interests,
      "education": education,
      "experience": experience,
      "profession": profession,
      "languages": [languages ?? ''].join(','),
      "bio": bio,
      "targetStudent": targetStudent,
      "specialties": specialties?.join(','),
      'birthday': birthday != null ? DateFormat('yyyy-MM-dd').format(birthday) : null,
      'country': country,
      'certificate': await MultipartFile.fromFile(certificate.path ?? ''),
      'avatar': await MultipartFile.fromFile(avatar.path),
      'name': name,
      'price': 10000,
    }));
    // final param = RegisterTeacherParam(
    //     name: name,
    //     avatar: FormData.fromMap({
    //       'avatar': await MultipartFile.fromFile(avatar.path),
    //     }),
    //     certificate:
    //         FormData.fromMap({'certificate': await MultipartFile.fromFile(certificate.path ?? '')}),
    //     country: country,
    //     education: education,
    //     interests: interests,
    //     experience: experience,
    //     profession: profession,
    //     languages: [languages ?? ''],
    //     bio: bio,
    //     birthday: birthday,
    //     targetStudent: targetStudent,
    //     specialties: specialties);
    final res = await _userRepository.registerTeacher(param);
    final result = await _userRepository.getUserInfo();
    state = result.fold(
        (l) => AsyncError(l.message.toString(), StackTrace.current), (r) => AsyncData(r));
    return res;
  }
}
