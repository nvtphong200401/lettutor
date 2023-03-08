import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lettutor/core/presentation/common_widgets/common_header.dart';
import 'package:lettutor/presentation/courses/detail/course_info_screen.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../core/presentation/common_styles/text_style.dart';

const tabsItem = [
  'Course',
  'Ebook',
  'Interactive E-book',
];

class CoursesScreen extends HookWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: CommonHeader(
              avatar: SvgPicture.network(
                'https://sandbox.app.lettutor.com/static/media/course.0bf1bb71.svg',
                width: 100,
              ),
              title: 'Discover Courses'),
        ),
        const SizedBox(
          height: 10,
        ),
        _buildSection('English For Traveling'),
        const SizedBox(
          height: 15,
        ),
        _buildSection('English For Beginner'),
        const SizedBox(
          height: 15,
        ),
        _buildSection('Business English'),
      ],
    );
  }

  Widget _buildText(String text, double fontSize, [FontWeight fontWeight = FontWeight.w400]) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
      ),
    );
  }

  Widget _buildSection(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildText(title, 25),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              CourseCard(
                imageUrl:
                    'https://camblycurriculumicons.s3.amazonaws.com/5e0e8b212ac750e7dc9886ac?h=d41d8cd98f00b204e9800998ecf8427e',
                title: 'Life in the Internet Age',
                subtitle1: 'Let\'s discuss how technology is changing the way we live',
                subtitle2: 'Intermediate  •  9 Lessons',
              ),
              CourseCard(
                imageUrl:
                    'https://camblycurriculumicons.s3.amazonaws.com/5e2b99f70f8f1e9f625e8317?h=d41d8cd98f00b204e9800998ecf8427e',
                title: 'Caring for Our Planet',
                subtitle1: 'Let\'s discuss our relationship as humans with our planet, Earth',
                subtitle2: 'Intermediate  •  9 Lessons',
              ),
              CourseCard(
                imageUrl:
                    'https://camblycurriculumicons.s3.amazonaws.com/5e0e8b212ac750e7dc9886ac?h=d41d8cd98f00b204e9800998ecf8427e',
                title: 'Life in the Internet Age',
                subtitle1: 'Let\'s discuss how technology is changing the way we live',
                subtitle2: 'Intermediate  •  9 Lessons',
              ),
            ],
          ),
        )
      ],
    );
  }
}

class CourseCard extends StatelessWidget {
  const CourseCard({
    super.key,
    required this.imageUrl,
    required this.title,
    this.subtitle1,
    this.subtitle2,
  });

  final String imageUrl;
  final String title;
  final String? subtitle1;
  final String? subtitle2;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const CourseInfoScreen())),
      child: Container(
        height: 340,
        width: 300,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FadeInImage.memoryNetwork(
                  imageErrorBuilder: (context, error, stackTrace) {
                    return const SizedBox.shrink();
                  },
                  placeholder: kTransparentImage,
                  image: imageUrl,
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(28),
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    if (subtitle1 != null)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11),
                        child: Text(
                          subtitle1!,
                          style: CommonTextStyle.descCourse,
                        ),
                      ),
                    if (subtitle2 != null) Text(subtitle2!),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
