import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/core/locales/app_locale.dart';
import 'package:lettutor/core/presentation/common_widgets/common_tag.dart';
import 'package:lettutor/core/presentation/common_widgets/common_widgets.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:lettutor/presentation/courses/tab_interactive_book.dart';
import 'package:lettutor/presentation/teacher/teacher_card_item.dart';
import 'package:lettutor/presentation/teacher/up_comming_lesson_board.dart';
import '../../core/presentation/common_widgets/constant.dart';
import '../../core/presentation/common_widgets/pagination_row.dart';
import '../../shared/teacher_providers.dart';

class ListTeachScreen extends HookConsumerWidget {
  const ListTeachScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dropdownKey = useMemoized(() => GlobalKey<DropdownButton2State>());
    final searchNationalityController = useTextEditingController();
    final searchNameController = useTextEditingController();
    final specialtiesNotifier = useValueNotifier('');
    final nationalityNotifier = useValueNotifier('');
    return DismissKeyboardScaffold(
      appBar: const CommonAppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          const SizedBox(
            height: 10,
          ),
          const UpcommingLessonBoard(),
          const SizedBox(
            height: 20,
          ),
          Text(
            AppLocale.findATutor.getString(context),
            style: Theme.of(context)
                .textTheme
                .titleLarge, // TextStyle(color: Theme.of(context).textTheme., fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: CommonTextFormField(
                  controller: searchNameController,
                  onChanged: (value) {
                    ref.read(teachersProvider.notifier).searchTeacher(
                        keyword: value,
                        specialties: [specialtiesNotifier.value],
                        nationality: nationalityNotifier.value);
                  },
                  capsuleShape: true,
                  hintText: '${AppLocale.enterTutorName.getString(context)}...',
                  autofocus: false,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: DropdownButtonFormField2(
                  dropdownButtonKey: dropdownKey,
                  value: nationalityNotifier.value.isEmpty ? null : nationalityNotifier.value,
                  dropdownSearchData: DropdownSearchData(
                      searchController: searchNationalityController,
                      searchInnerWidgetHeight: 45,
                      searchInnerWidget: CommonTextFormField(
                        hintText: AppLocale.selectNationality.getString(context),
                        controller: searchNationalityController,
                        capsuleShape: true,
                        autofocus: true,
                      )),
                  menuItemStyleData: const MenuItemStyleData(),
                  buttonStyleData: const ButtonStyleData(
                    height: 20,
                  ),
                  dropdownStyleData: const DropdownStyleData(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(22), topRight: Radius.circular(22))),
                    offset: Offset(0, 30),
                    width: 198,
                  ),
                  isExpanded: true,
                  iconStyleData: const IconStyleData(iconSize: 18),
                  onChanged: (value) {
                    nationalityNotifier.value = value;
                    ref.read(teachersProvider.notifier).searchTeacher(
                        keyword: searchNameController.text,
                        specialties: [specialtiesNotifier.value],
                        nationality: value);
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
                      // top: 10,
                      bottom: 20,
                    ),
                  ),
                  items: tutorNationality
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                      .toList(),
                  hint: SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: Text(AppLocale.selectNationality.getString(context),
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: ColorName.grey,
                            overflow: TextOverflow.ellipsis) //TextStyle(color: ColorName.grey, ),
                        ),
                  ),
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
                children: specialties.entries
                    .map((e) => HookBuilder(builder: (context) {
                          final category = useValueListenable(specialtiesNotifier);
                          return CommonTag(
                            title: e.value,
                            onPressed: e.key == category
                                ? null
                                : () {
                                    specialtiesNotifier.value = e.key;
                                    ref.read(teachersProvider.notifier).searchTeacher(
                                        keyword: searchNameController.text,
                                        specialties: [specialtiesNotifier.value],
                                        nationality: nationalityNotifier.value);
                                  },
                          );
                        }))
                    .toList()),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          Text(
            AppLocale.recommendedTutors.getString(context),
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 20,
          ),
          ref.watch(teachersProvider).when(
            loading: (_, __) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            data: (teachers, total, currentPage, errorMessage) {
              if (teachers.isEmpty) {
                return NotFoundScreen(
                  placeHolderString: AppLocale.cannotFindTutor.getString(context),
                );
              }

              return Column(
                children: [
                  ...teachers
                      .map((e) => Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: TeacherCardItem(
                              teacher: e,
                            ),
                          ))
                      .toList(),
                  if (total > 18)
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Pager(
                        totalPages: (total / 9).ceil(),
                        onPageChanged: (page) {
                          if (page != currentPage) {
                            ref.read(teachersProvider.notifier).searchTeacher(
                                keyword: searchNameController.text,
                                specialties: [specialtiesNotifier.value],
                                currPage: page);
                          }
                        },
                        currentPage: currentPage,
                      ),
                    ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
