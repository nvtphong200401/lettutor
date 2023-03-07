import 'package:flutter/material.dart';
import 'package:lettutor/core/presentation/common_styles/common_styles.dart';
import 'package:lettutor/core/presentation/common_widgets/common_appbar.dart';
import 'package:lettutor/core/presentation/common_widgets/common_layout.dart';
import 'package:lettutor/core/presentation/common_widgets/constant.dart';
import 'package:lettutor/gen/colors.gen.dart';

class CourseDetailScreen extends StatelessWidget {
  const CourseDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DismissKeyboardScaffold(
      appBar: const CommonAppBar(),
      body: ListView(
        padding: paddingLayout,
        children: [
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: FadeInImage(
                        imageErrorBuilder: (context, error, stackTrace) {
                          return const SizedBox.shrink();
                        },
                        placeholder: const AssetImage('assets/images/login_banner.png'),
                        image: const NetworkImage(
                            'https://camblycurriculumicons.s3.amazonaws.com/5e0e8b212ac750e7dc9886ac?h=d41d8cd98f00b204e9800998ecf8427e'))),
                ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(28),
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Life in the Internet Age',
                      style: CommonTextStyle.titleCourse,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 11),
                      child: Text(
                        'Let\'s discuss how technology is changing the way we live',
                        style: CommonTextStyle.descCourse,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: CommonButtonStyle.primaryButtonStyle,
                      child: const Text('Discover'),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          buildHeader('Overview'),
          buildDescription('Why take this course',
              "It can be intimidating to speak with a foreigner, no matter how much grammar and vocabulary you've mastered. If you have basic knowledge of English but have not spent much time speaking, this course will help you ease into your first English conversations."),
          buildDescription('What will you be able to do',
              "This course covers vocabulary at the CEFR A2 level. You will build confidence while learning to speak about a variety of common, everyday topics. In addition, you will build implicit grammar knowledge as your tutor models correct answers and corrects your mistakes."),
          buildHeader('Experience Level'),
          buildContent(Icons.people_outline_outlined, 'Beginner'),
          buildHeader('Course Length'),
          buildContent(Icons.book_outlined, '10 topics'),
          buildHeader('List Topics'),
          const SizedBox(
            height: 20,
          ),
          buildTopicItem('1. Foods You Love'),
          const SizedBox(
            height: 10,
          ),
          buildTopicItem('2. Your Job'),
          const SizedBox(
            height: 10,
          ),
          buildTopicItem('3. Playing and watching Sports'),
          const SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }

  Widget buildTopicItem(String topic) {
    return ElevatedButton(
        style: CommonButtonStyle.primaryButtonStyle
            .customCopyWith(backgroundColor: ColorName.cardhistory, capsuleShape: false),
        onPressed: () {},
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            topic,
            style: CommonTextStyle.textSize16,
          ),
        ));
  }

  Widget buildContent(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Icon(
            icon,
            color: ColorName.primary,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(text),
        ],
      ),
    );
  }

  Widget buildHeader(String header) {
    return Row(
      children: [
        const Flexible(
          flex: 1,
          child: Divider(),
        ),
        Text(
          header,
          style: CommonTextStyle.title,
        ),
        const Flexible(
          flex: 1,
          child: Divider(),
        ),
      ],
    );
  }

  Widget buildDescription(String title, String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(children: [
            const Icon(
              Icons.help_outline,
              color: Colors.red,
            ),
            const SizedBox(
              width: 3,
            ),
            Text(
              title,
              style: CommonTextStyle.textSize16.copyWith(fontWeight: FontWeight.w500),
            ),
          ]),
          Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Expanded(child: Text(content)),
            ],
          ),
        ],
      ),
    );
  }
}
