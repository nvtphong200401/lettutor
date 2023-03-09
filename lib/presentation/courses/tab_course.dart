import 'package:flutter/material.dart';

import 'course_card.dart';

class TabCourse extends StatelessWidget {
  const TabCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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

  Widget _buildText(String text, double fontSize,
      [FontWeight fontWeight = FontWeight.w400]) {
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
                subtitle1:
                    'Let\'s discuss how technology is changing the way we live',
                subtitle2: 'Intermediate  •  9 Lessons',
              ),
              CourseCard(
                imageUrl:
                    'https://camblycurriculumicons.s3.amazonaws.com/5e2b99f70f8f1e9f625e8317?h=d41d8cd98f00b204e9800998ecf8427e',
                title: 'Caring for Our Planet',
                subtitle1:
                    'Let\'s discuss our relationship as humans with our planet, Earth',
                subtitle2: 'Intermediate  •  9 Lessons',
              ),
              CourseCard(
                imageUrl:
                    'https://camblycurriculumicons.s3.amazonaws.com/5e0e8b212ac750e7dc9886ac?h=d41d8cd98f00b204e9800998ecf8427e',
                title: 'Life in the Internet Age',
                subtitle1:
                    'Let\'s discuss how technology is changing the way we live',
                subtitle2: 'Intermediate  •  9 Lessons',
              ),
            ],
          ),
        )
      ],
    );
  }
}
