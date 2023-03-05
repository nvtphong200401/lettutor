import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lettutor/core/presentation/common_widgets/common_widgets.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:lettutor/presentation/teacher/up_comming_lesson_board.dart';

const tutorNationality = [
  'Vietnamese Tutor',
  'Foreign Tutor',
  'Native English Tutor'
];

class ListTeachScreen extends HookWidget {
  const ListTeachScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dropdownKey = useMemoized(() => GlobalKey<DropdownButton2State>());
    final searchController = useTextEditingController();
    return DismissKeyboardScaffold(
      appBar: const CommonAppBar(),
      body: ListView(
        children: [
          const UpcommingLessonBoard(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const Text(
                  'Find a tutor',
                  style: TextStyle(
                      color: ColorName.textColor,
                      fontSize: 29,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    const Expanded(
                      child: CommonTextFormField(
                        capsuleShape: true,
                        hintText: 'Enter tutor name...',
                        autofocus: false,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          DropdownButtonFormField2(
                            dropdownButtonKey: dropdownKey,
                            dropdownSearchData: DropdownSearchData(
                                searchController: searchController,
                                searchInnerWidgetHeight: 45,
                                searchInnerWidget: CommonTextFormField(
                                  hintText: 'Select nationality',
                                  controller: searchController,
                                  capsuleShape: true,
                                  autofocus: true,
                                )),
                            menuItemStyleData: const MenuItemStyleData(),
                            buttonStyleData: const ButtonStyleData(
                              height: 22,
                            ),
                            dropdownStyleData: const DropdownStyleData(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(22),
                                      topRight: Radius.circular(22))),
                              offset: Offset(0, 30),
                              width: 200,
                            ),
                            iconStyleData: const IconStyleData(iconSize: 20),
                            onChanged: (value) {
                              // focuNode.requestFocus();
                            },
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: const BorderSide(
                                      color: ColorName.grey, width: 1.5)),
                              //Add isDense true and zero Padding.
                              //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                              isDense: true,
                              contentPadding: const EdgeInsets.only(
                                  left: 10, top: 10, bottom: 10),
                            ),
                            items: tutorNationality
                                .map((e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(e),
                                    ))
                                .toList(),
                            hint: const Text(
                              'Select nationality',
                              style: TextStyle(color: ColorName.grey),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const Divider(),
                const Text(
                  'Recommended Tutors',
                  style: TextStyle(
                      color: ColorName.textColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 30,
                              foregroundImage: NetworkImage(
                                  'https://api.app.lettutor.com/avatar/8c4e58c4-e9d1-4353-b64d-41b573c5a3e9avatar1632284832414.jpg'),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Joan Gacer',
                                  style: TextStyle(
                                      color: ColorName.textColor,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('No reviews yet'),
                              ],
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Wrap(
                          children: [
                            CommonPrimaryButton(
                              backgroundColor:
                                  ColorName.primary.withOpacity(0.2),
                              size: const Size.fromHeight(30),
                              capsuleShape: true,
                              child: const Text(
                                'English for kids',
                                style: TextStyle(color: ColorName.primary),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            CommonPrimaryButton(
                              backgroundColor:
                                  ColorName.primary.withOpacity(0.2),
                              size: const Size.fromHeight(30),
                              capsuleShape: true,
                              child: const Text(
                                'IELTS',
                                style: TextStyle(color: ColorName.primary),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text('I don\'t want to do this anymore')
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
