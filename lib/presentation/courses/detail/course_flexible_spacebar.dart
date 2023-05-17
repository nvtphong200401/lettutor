import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../../core/presentation/common_styles/button_style.dart';
import '../../../core/presentation/common_styles/text_style.dart';

class CourseInfoFlexibleSpaceBar extends StatelessWidget {
  const CourseInfoFlexibleSpaceBar(
      {super.key, required this.title, required this.imageUrl, required this.description});
  final String title;
  final String imageUrl;
  final String description;

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
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
                  image: imageUrl,
                  height: 320,
                )),
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
                      children: [
                        Text(
                          title,
                          style: CommonTextStyle.titleCourse,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 11),
                          child: Text(
                            description,
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
    );
  }
}
