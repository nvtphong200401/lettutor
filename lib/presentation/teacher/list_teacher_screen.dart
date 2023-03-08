import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lettutor/core/presentation/common_widgets/common_tag.dart';
import 'package:lettutor/core/presentation/common_widgets/common_widgets.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:lettutor/presentation/teacher/teacher_card_item.dart';
import 'package:lettutor/presentation/teacher/up_comming_lesson_board.dart';

const tutorNationality = ['Vietnamese Tutor', 'Foreign Tutor', 'Native English Tutor'];

class ListTeachScreen extends HookWidget {
  const ListTeachScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dropdownKey = useMemoized(() => GlobalKey<DropdownButton2State>());
    final searchController = useTextEditingController();
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      children: [
        const SizedBox(
          height: 10,
        ),
        const UpcommingLessonBoard(),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Find a tutor',
          style: TextStyle(color: ColorName.textColor, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
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
                      height: 23,
                    ),
                    dropdownStyleData: const DropdownStyleData(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22), topRight: Radius.circular(22))),
                      offset: Offset(0, 30),
                      width: 200,
                    ),
                    iconStyleData: const IconStyleData(iconSize: 18),
                    onChanged: (value) {
                      // focuNode.requestFocus();
                    },
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(color: ColorName.grey, width: 1.5)),
                      //Add isDense true and zero Padding.
                      //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                      isDense: true,
                      contentPadding: const EdgeInsets.only(
                        left: 10,
                        top: 10,
                        bottom: 10,
                      ),
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
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              CommonTag(title: 'IELTS'),
              SizedBox(
                width: 10,
              ),
              CommonTag(title: 'English for kids'),
              SizedBox(
                width: 10,
              ),
              CommonTag(title: 'Conversational'),
              SizedBox(
                width: 10,
              ),
              CommonTag(title: 'TOEIC'),
              SizedBox(
                width: 10,
              ),
              CommonTag(title: 'English for Business'),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Recommended Tutors',
          style: TextStyle(color: ColorName.textColor, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        const TeacherCardItem(),
        const SizedBox(
          height: 20,
        ),
        const TeacherCardItem(),
      ],
    );
  }
}
