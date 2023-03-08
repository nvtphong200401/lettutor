import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../../core/presentation/common_styles/button_style.dart';
import '../../../core/presentation/common_styles/text_style.dart';

class CourseSlivers {
  CourseSlivers._();

  static SliverAppBar get courseAppBar => SliverAppBar(
        expandedHeight: 400,
        collapsedHeight: 100,
        flexibleSpace: FlexibleSpaceBar(
          background: SizedBox(
            height: 400,
            width: 200,
            child: Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: FadeInImage.memoryNetwork(
                        imageErrorBuilder: (context, error, stackTrace) {
                          return const SizedBox.shrink();
                        },
                        placeholder: kTransparentImage,
                        image:
                            'https://camblycurriculumicons.s3.amazonaws.com/5e0e8b212ac750e7dc9886ac?h=d41d8cd98f00b204e9800998ecf8427e')),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Life in the Internet Age',
                              style: CommonTextStyle.titleCourse,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 11),
                              child: Text(
                                'Let\'s discuss how technology is changing the way we live',
                                style: CommonTextStyle.descCourse,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: CommonButtonStyle.primaryButtonStyle,
                        child: const Text('Discover'),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
