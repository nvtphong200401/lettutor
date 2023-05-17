import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/core/presentation/common_widgets/common_widgets.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:lettutor/presentation/courses/tab_books.dart';
import 'package:lettutor/presentation/courses/tab_course.dart';
import 'package:lettutor/presentation/courses/tab_interactive_book.dart';
import 'package:lettutor/shared/course_providers.dart';

import '../../core/locales/app_locale.dart';
import 'course_dropdown.dart';

const tabsItem = [
  'Course',
  'Ebook',
  'Interactive E-book',
];

const tabsWidget = [TabCourse(), TabBooks(), NotFoundScreen()];

class CoursesScreen extends HookConsumerWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 3);
    final currentIndex = useValueNotifier(0);
    // final scrollController = useScrollController();
    // final appBarHeight = useState(0.0);
    final selectedCategories = useValueNotifier(<String>{});
    final txtSearchCourse = useTextEditingController();

    return DismissKeyboardScaffold(
      appBar: const CommonAppBar(),
      body: Scaffold(
        body: CustomScrollView(
          // controller: scrollController,
          slivers: [
            HookBuilder(builder: (context) {
              final selectedCatesListener = useValueListenable(selectedCategories);
              return SliverAppBar(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                expandedHeight: 220 + selectedCatesListener.length * 20,
                actions: const [],
                // title: CommonSliverAppbarTitle(scrollController: scrollController),
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CommonHeader(
                          avatar: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: SvgPicture.network(
                              'https://sandbox.app.lettutor.com/static/media/course.0bf1bb71.svg',
                              width: 100,
                            ),
                          ),
                          title: AppLocale.discoverCourses.getString(context),
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: SizedBox(
                                height: 36,
                                child: TextField(
                                  controller: txtSearchCourse,
                                  autofocus: false,
                                  textInputAction: TextInputAction.search,
                                  keyboardType: TextInputType.text,
                                  onChanged: (value) {
                                    ref
                                        .read(coursesNotifierProvider.notifier)
                                        .getCourseList(query: value);
                                  },
                                  // cursorHeight: 20,
                                  decoration: InputDecoration(
                                    prefixIconConstraints:
                                        const BoxConstraints(minWidth: 18, maxHeight: 18),
                                    prefixIcon: const Padding(
                                      padding: EdgeInsets.only(left: 12, right: 6),
                                      child: Icon(Icons.search, size: 18, color: ColorName.grey),
                                    ),
                                    contentPadding: const EdgeInsets.fromLTRB(6, 6, 12, 6),
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.grey, width: 1),
                                      borderRadius: BorderRadius.circular(2.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.grey, width: 1),
                                      borderRadius: BorderRadius.circular(2.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.grey, width: 1),
                                      borderRadius: BorderRadius.circular(2.0),
                                    ),
                                    filled: true,
                                    hintStyle: const TextStyle(color: ColorName.grey),
                                    hintText: AppLocale.searchCourses.getString(context),
                                    // fillColor: Theme.of(context).,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: DropdownFieldMultipleSelection(
                          data: categories,
                          title: AppLocale.selectCategory.getString(context),
                          valuesSelected: selectedCategories,
                        ),
                      ),
                    ],
                  ),
                ),
                bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(50),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          bottom: 1,
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: ColorName.cardhistory, width: 1),
                              ),
                            ),
                          ),
                        ),
                        TabBar(
                          labelColor: Theme.of(context).primaryColor, // ColorName.primary,
                          tabs: tabsItem
                              .map((e) => Tab(
                                    text: e,
                                  ))
                              .toList(),
                          controller: tabController,
                          labelPadding: EdgeInsets.zero,
                          padding: EdgeInsets.zero,
                          onTap: (index) {
                            currentIndex.value = index;
                          },
                        ),
                      ],
                    )),
              );
            }),
            SliverList(
                delegate: SliverChildListDelegate([
              HookBuilder(builder: (context) {
                final index = useValueListenable(currentIndex);
                return tabsWidget[index];
              })
            ]))
          ],
        ),
      ),
    );
  }
}
