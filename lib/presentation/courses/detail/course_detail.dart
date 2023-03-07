import 'package:flutter/material.dart';
import 'package:lettutor/core/presentation/common_styles/common_styles.dart';
import 'package:lettutor/core/presentation/common_widgets/common_appbar.dart';
import 'package:lettutor/core/presentation/common_widgets/common_layout.dart';
import 'package:lettutor/core/presentation/common_widgets/constant.dart';

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.network(
                    'https://camblycurriculumicons.s3.amazonaws.com/5e0e8b212ac750e7dc9886ac?h=d41d8cd98f00b204e9800998ecf8427e'),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Life in the Internet Age',
                  style: CommonTextStyle.titleCourse,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Let\'s discuss how technology is changing the way we live',
                  style: CommonTextStyle.descCourse,
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: primaryButtonStyle,
                  child: const Text('Discover'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
