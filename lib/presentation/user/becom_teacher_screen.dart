import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:countries_utils/countries.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lettutor/core/presentation/common_widgets/common_dialog.dart';
import 'package:lettutor/core/presentation/common_widgets/common_widgets.dart';
import 'package:lettutor/core/presentation/common_widgets/constant.dart';
import 'package:lettutor/presentation/courses/detail/course_header.dart';

import '../../core/presentation/common_styles/textfield_style.dart';
import '../../core/presentation/common_widgets/common_dropdown.dart';
import '../../gen/colors.gen.dart';
import '../../shared/user_providers.dart';
import 'birthday_picker.dart';

class BecomeTeacherScreen extends HookConsumerWidget {
  const BecomeTeacherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final info = ref.watch(userNotifierProvider);

    return DismissKeyboardScaffold(
      isLogin: true,
      appBar: const CommonAppBar(
        isLogin: true,
      ),
      body: info.maybeWhen(
          orElse: () => const Center(
                child: CircularProgressIndicator(),
              ),
          data: (data) {
            if (data.user?.tutorInfo != null) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.hourglass_empty_sharp,
                      size: 50,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'You have done all the steps',
                      style: TextStyle(fontSize: 20),
                    ),
                    const Text('Please, wait for the operator\'s approval',
                        style: TextStyle(fontSize: 20)),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          context.router.popUntilRoot();
                        },
                        child: const Text('Back home'))
                  ],
                ),
              );
            }
            final txtName = useTextEditingController(text: data.user?.name ?? '');
            final txtInterests = useTextEditingController();
            final txtEducation = useTextEditingController();
            final txtExperience = useTextEditingController();
            final txtProfession = useTextEditingController();
            final txtBio = useTextEditingController();
            final levelNotifier = useState<String?>(null);
            final countries = Countries.all();
            final country = useValueNotifier(Countries.byCode(data.user?.country ?? 'VN').name);
            final birthday = useValueNotifier<DateTime>(data.user?.birthday ?? DateTime.now());
            final image = useState<XFile?>(null);
            final certificate = useState<PlatformFile?>(null);
            final specialtiesNotifier = useValueNotifier<List<String>>([]);
            return ListView(
              padding: paddingLayout,
              children: [
                CommonHeader(
                  avatar: SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.network(
                      becomeTeacherImage,
                      width: 100,
                      height: 100,
                    ),
                  ),
                  title: 'Set up your tutor profile',
                  children: const [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        'Your tutor profile is your chance to market yourself to students on Tutoring. You can make edits later on your profile settings page.'),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const CourseHeader(header: 'Basic info'),
                GestureDetector(
                  onTap: () async {
                    image.value = await ImagePicker().pickImage(
                      source: ImageSource.gallery,
                      preferredCameraDevice: CameraDevice.front,
                    );
                  },
                  child: Center(
                    child: Stack(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              color: image.value != null ? null : ColorName.cardhistory,
                              borderRadius: BorderRadius.circular(100),
                              image: image.value != null
                                  ? DecorationImage(
                                      image: FileImage(File(image.value?.path ?? '')),
                                      fit: BoxFit.cover)
                                  : null),
                          child: image.value != null
                              ? null
                              : const Center(
                                  child: Text(
                                  'Upload avatar here',
                                  style: TextStyle(color: Colors.grey),
                                )),
                        ),
                        Positioned(
                          bottom: 5,
                          right: 5,
                          child: Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                                color: ColorName.primary, borderRadius: BorderRadius.circular(100)),
                            child: const Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                inputField(title: 'Tutoring Name', controller: txtName),
                const SizedBox(
                  height: 10,
                ),
                titleWithChild(
                  title: 'I\'m from',
                  child: CommonDropdownButton(
                    items: countries.map((e) => e.name ?? '').toList(),
                    hintText: 'Nationality',
                    width: 350,
                    selection: country,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                titleWithChild(title: 'Data of Birth', child: BirthdayPicker(birthday: birthday)),
                const SizedBox(
                  height: 10,
                ),
                const CourseHeader(header: 'CV'),
                const SizedBox(
                  height: 10,
                ),
                inputField(title: 'Interests', controller: txtInterests),
                const SizedBox(
                  height: 10,
                ),
                inputField(title: 'Education', controller: txtEducation),
                const SizedBox(
                  height: 10,
                ),
                inputField(title: 'Experience', controller: txtExperience),
                const SizedBox(
                  height: 10,
                ),
                inputField(title: 'Current or Previous position', controller: txtProfession),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    OutlinedButton(
                        onPressed: () async {
                          final result = await FilePicker.platform.pickFiles(
                              allowMultiple: false,
                              type: FileType.custom,
                              allowedExtensions: ['pdf', 'doc', 'docx', 'png', 'jpg', 'jpeg']);
                          if (result != null) {
                            certificate.value = result.files.first;
                          }
                        },
                        child: const Text('Add new certificate')),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(certificate.value != null
                        ? certificate.value?.name ?? ''
                        : 'No file was selected'),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const CourseHeader(header: 'Who I teach'),
                const SizedBox(
                  height: 20,
                ),
                inputField(title: 'Introduction', controller: txtBio),
                const SizedBox(
                  height: 10,
                ),
                titleWithChild(
                    title: 'I am best at teaching students who are',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: levelList
                          .map((e) => Row(
                                children: [
                                  Radio(
                                    groupValue: levelNotifier.value,
                                    value: e,
                                    onChanged: (value) {
                                      levelNotifier.value = value;
                                    },
                                  ),
                                  Text(e.split('_').join(' ')),
                                ],
                              ))
                          .toList(),
                    )),
                const SizedBox(
                  height: 10,
                ),
                titleWithChild(
                    title: 'My specialties',
                    child: Column(
                      children: specialties.entries.map((e) {
                        if (e.key.isEmpty) {
                          return const SizedBox.shrink();
                        }
                        final isCheck = useState(false);
                        return Row(
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              value: isCheck.value,
                              onChanged: (bool? value) {
                                isCheck.value = value ?? false;
                                specialtiesNotifier.value.add(e.key);
                              },
                            ),
                            Text(e.value)
                          ],
                        );
                      }).toList(),
                    )),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () async {
                      if (image.value == null) {
                        CommonDialog(context)
                            .errorDialog(title: 'Error', body: 'Avatar is required');
                        return;
                      }
                      if (certificate.value == null) {
                        CommonDialog(context)
                            .errorDialog(title: 'Error', body: 'Certificate is required');
                        return;
                      }
                      CommonDialog(context).loadingDialog();
                      final res = await ref.read(userNotifierProvider.notifier).registerTutor(
                          name: txtName.text,
                          avatar: image.value!,
                          certificate: certificate.value!,
                          country: Countries.byName(country.value ?? 'Vietnam').alpha2Code,
                          bio: txtBio.text,
                          birthday: birthday.value,
                          interests: txtInterests.text,
                          education: txtEducation.text,
                          profession: txtProfession.text,
                          targetStudent: levelNotifier.value,
                          specialties: specialtiesNotifier.value);
                      if (context.mounted) {
                        await context.router.root.pop();
                      }
                      res.fold((l) {
                        CommonDialog(context)
                            .errorDialog(title: 'Error', body: l.message ?? 'An error occured');
                      }, (r) {});
                    },
                    child: const Text('Register')),
                const SizedBox(
                  height: 20,
                ),
              ],
            );
          }),
    );
  }

  Widget inputField(
      {required String title, required TextEditingController controller, bool isDisabled = false}) {
    return titleWithChild(
      title: title,
      child: TextFormField(
        readOnly: isDisabled,
        controller: controller,
        decoration: CommonTextFieldStyle.primaryInputDecoration.copyWith(
            fillColor: ColorName.cardhistory,
            filled: isDisabled,
            focusedBorder: isDisabled
                ? OutlineInputBorder(
                    borderSide: const BorderSide(color: ColorName.grey, width: 1.5),
                    borderRadius: BorderRadius.circular(6),
                  )
                : null),
      ),
    );
  }

  Widget titleWithChild({required String title, required Widget child}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 8,
        ),
        child
      ],
    );
  }

  Future _onChangeImageWithStorage(WidgetRef ref) async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      preferredCameraDevice: CameraDevice.front,
    );
    if (image != null) {
      ref.read(userNotifierProvider.notifier).changeUserAvatar(image);
    }
  }
}
