import 'package:auto_route/auto_route.dart';
import 'package:countries_utils/countries_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lettutor/core/presentation/common_styles/common_styles.dart';
import 'package:lettutor/core/presentation/common_styles/textfield_style.dart';
import 'package:lettutor/core/presentation/common_widgets/common_dialog.dart';
import 'package:lettutor/core/presentation/common_widgets/common_widgets.dart';
import 'package:lettutor/core/presentation/common_widgets/constant.dart';
import 'package:lettutor/presentation/courses/course_dropdown.dart';
import 'package:lettutor/shared/user_providers.dart';

import '../../core/presentation/common_widgets/common_dropdown.dart';
import '../../gen/colors.gen.dart';
import 'birthday_picker.dart';

class UserProfileScreen extends HookConsumerWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final info = ref.watch(userNotifierProvider);
    return info.maybeWhen(
      orElse: () => const Center(
        child: CircularProgressIndicator(),
      ),
      data: (data) {
        final countries = Countries.all();
        final txtName = useTextEditingController(text: data.user?.name ?? '');
        final txtEmail = useTextEditingController(text: data.user?.email ?? '');
        final txtPhone = useTextEditingController(text: data.user?.phone ?? '');
        final txtStudySchedule = useTextEditingController(text: data.user?.studySchedule ?? '');
        final birthday = useValueNotifier(data.user?.birthday ?? DateTime.now());
        final learn = useValueNotifier(
            <String>{'IELTS', ...?data.user?.learnTopics?.map((e) => e.name ?? '').toList()});
        final country = useValueNotifier(Countries.byCode(data.user?.country ?? 'VN').name);
        final level = useValueNotifier(data.user?.level);
        return DismissKeyboardScaffold(
          isLogin: true,
          appBar: const CommonAppBar(
            isLogin: true,
          ),
          body: ListView(
            padding: paddingLayout,
            children: [
              GestureDetector(
                onTap: () => _onChangeImageWithStorage(ref),
                child: Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: NetworkImage(data.user?.avatar ?? defaultAvatar),
                                fit: BoxFit.cover)),
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
              const SizedBox(
                height: 10,
              ),
              inputField(title: 'Name', controller: txtName),
              const SizedBox(
                height: 10,
              ),
              inputField(title: 'Email Address', controller: txtEmail, isDisabled: true),
              const SizedBox(
                height: 10,
              ),
              titleWithChild(
                title: 'Country',
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
              inputField(
                title: 'Phone Number',
                controller: txtPhone,
                isDisabled: true,
              ),
              const SizedBox(
                height: 10,
              ),
              titleWithChild(title: 'Birthday', child: BirthdayPicker(birthday: birthday)),
              const SizedBox(
                height: 10,
              ),
              titleWithChild(
                title: 'My level',
                child: CommonDropdownButton(
                  items: levelList,
                  hintText: 'My level',
                  selection: level,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              titleWithChild(
                  title: 'Want to learn',
                  child: DropdownFieldMultipleSelection(data: [
                    'IELTS',
                    'TOEIC',
                    'PET',
                    ...?data.user?.learnTopics?.map((e) => e.name ?? '').toList()
                  ], title: 'Want do you want to learn', valuesSelected: learn)),
              const SizedBox(
                height: 10,
              ),
              titleWithChild(
                  title: 'Study Schedule',
                  child: TextFormField(
                    controller: txtStudySchedule,
                    decoration: CommonTextFieldStyle.primaryInputDecoration,
                    maxLines: 3,
                  )),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () async {
                    CommonDialog(context).loadingDialog();
                    final result = await ref.read(userNotifierProvider.notifier).changeUserInfo(
                        name: txtName.text,
                        birthday: birthday.value,
                        country: Countries.byName(country.value ?? 'Vietnam').alpha2Code,
                        level: level.value,
                        studySchedule: txtStudySchedule.text);
                    if (context.mounted) {
                      await context.router.root.pop();
                    }
                    result.fold(
                      (l) => CommonDialog(context)
                          .errorDialog(title: 'Save error', body: 'An error occured'),
                      (r) => CommonDialog(context)
                          .successDialog(title: '', body: 'Saved successfully'),
                    );
                  },
                  style: CommonButtonStyle.primaryButtonStyle,
                  child: const Text('Save changes'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        );
      },
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

  Widget inputField(
      {required String title, required TextEditingController controller, bool isDisabled = false}) {
    return titleWithChild(
      title: title,
      child: Builder(builder: (context) {
        return TextFormField(
          readOnly: isDisabled,
          controller: controller,
          decoration: CommonTextFieldStyle.primaryInputDecoration.copyWith(
              fillColor: Theme.of(context).appBarTheme.backgroundColor, // ColorName.cardhistory,
              filled: isDisabled,
              focusedBorder: isDisabled
                  ? OutlineInputBorder(
                      borderSide: const BorderSide(color: ColorName.grey, width: 1.5),
                      borderRadius: BorderRadius.circular(6),
                    )
                  : null),
        );
      }),
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
