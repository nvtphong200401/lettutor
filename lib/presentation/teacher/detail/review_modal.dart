import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lettutor/core/presentation/common_styles/text_style.dart';
import 'package:lettutor/core/presentation/common_widgets/constant.dart';
import 'package:lettutor/infrastructure/teacher/models/paginated_tutors.dart';

class FeedbackModal extends StatelessWidget {
  const FeedbackModal({super.key, required this.feedbacks});
  final List<FeedbackModel> feedbacks;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        if (index == 0) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'Feedbacks',
                  style: CommonTextStyle.titleCourse,
                ),
              ),
              Divider()
            ],
          );
        }
        index = index - 1;
        final user = feedbacks[index].firstInfo;
        final rating = feedbacks[index].rating ?? 0;
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(user?.avatar ?? defaultAvatar),
          ),
          title: Row(
            children: [
              Text(user?.name ?? ''),
              const SizedBox(
                width: 5,
              ),
              Text(
                  DateFormat('yyyy-MM-dd').format(DateTime.parse(feedbacks[index].createdAt ?? '')))
            ],
          ),
          subtitle: Row(
            children: [
              ...List.filled(
                  rating.toInt(),
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 20,
                  )),
              ...List.filled(
                  5 - rating.toInt(),
                  Icon(
                    Icons.star,
                    color: Colors.grey.shade300,
                    size: 20,
                  ))
            ],
          ),
        );
      },
      itemCount: feedbacks.length + 1,
    );
  }
}
