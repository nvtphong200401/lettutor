import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lettutor/core/presentation/common_widgets/common_widgets.dart';
import 'package:lettutor/gen/colors.gen.dart';
import 'package:lettutor/presentation/courses/tab_books.dart';
import 'package:lettutor/presentation/courses/tab_course.dart';
import 'package:lettutor/presentation/courses/tab_interactive_book.dart';

const tabsItem = [
  'Course',
  'Ebook',
  'Interactive E-book',
];

const tabsWidget = [TabCourse(), TabBooks(), TabInteractiveBooks()];

class CoursesScreen extends HookWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 3);
    final currentIndex = useValueNotifier(0);

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 170,
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
                    title: 'Discover Courses',
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: SizedBox(
                          height: 36,
                          child: TextField(
                            autofocus: false,
                            textInputAction: TextInputAction.search,
                            keyboardType: TextInputType.text,
                            // cursorHeight: 20,
                            decoration: InputDecoration(
                                prefixIconConstraints: const BoxConstraints(
                                    minWidth: 18, maxHeight: 18),
                                prefixIcon: const Padding(
                                  padding: EdgeInsets.only(left: 12, right: 6),
                                  child: Icon(Icons.search,
                                      size: 18, color: ColorName.partDesc),
                                ),
                                contentPadding:
                                    const EdgeInsets.fromLTRB(6, 6, 12, 6),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: ColorName.partDesc, width: 1),
                                  borderRadius: BorderRadius.circular(2.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: ColorName.partDesc, width: 1),
                                  borderRadius: BorderRadius.circular(2.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: ColorName.partDesc, width: 1),
                                  borderRadius: BorderRadius.circular(2.0),
                                ),
                                filled: true,
                                hintStyle:
                                    const TextStyle(color: ColorName.partDesc),
                                hintText: 'Search courses',
                                fillColor: Colors.white70),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Positioned.fill(
                      bottom: 1,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: ColorName.cardhistory, width: 1),
                          ),
                        ),
                      ),
                    ),
                    TabBar(
                      labelColor: ColorName.primary,
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
                )
              ],
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          HookBuilder(builder: (context) {
            final index = useValueListenable(currentIndex);
            return tabsWidget[index];
          })
        ]))
      ],
    );
  }
}
