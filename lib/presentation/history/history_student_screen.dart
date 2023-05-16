import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lettutor/core/locales/app_locale.dart';
import 'package:lettutor/core/presentation/common_widgets/pagination_row.dart';
import 'package:lettutor/core/presentation/extensions.dart';
import 'package:lettutor/presentation/history/history_item.dart';

import '../../core/presentation/common_styles/common_styles.dart';
import '../../core/presentation/common_widgets/common_widgets.dart';
import '../../shared/history_providers.dart';
import '../courses/tab_interactive_book.dart';

class HistoryStudentScreen extends StatelessWidget {
  const HistoryStudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DismissKeyboardScaffold(
      appBar: const CommonAppBar(),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          CommonHeader(
            avatar: SvgPicture.network(
              'https://sandbox.app.lettutor.com/static/media/history.1e097d10.svg',
              width: 100,
            ),
            title: AppLocale.history.getString(context),
            children: [
              Text(
                AppLocale.historyDesc1.getString(context),
                style: CommonTextStyle.textSize16,
              ),
              Text(
                AppLocale.historyDesc2.getString(context),
                style: CommonTextStyle.textSize16,
              )
            ],
          ),
          Consumer(builder: (context, ref, child) {
            return ref.watch(historyNotifierProvider).when(
                data: (data, total, currentPage) {
                  // get schedule in the future
                  var schedule = data.inHistory();
                  if (schedule.isEmpty) {
                    return NotFoundScreen(
                      placeHolderString:
                          AppLocale.cannotFindHistory.getString(context),
                    );
                  }
                  return Column(
                    children: [
                      ...schedule.entries
                          .map((entry) => HistoryItem(
                              date: entry.key, schedules: entry.value))
                          .toList(),
                      Pager(
                          currentPage: currentPage,
                          totalPages: (total / 9).ceil(),
                          onPageChanged: (page) {
                            if (page != currentPage) {
                              ref
                                  .read(historyNotifierProvider.notifier)
                                  .getHistory(page: page);
                            }
                          })
                      // PaginationRow(
                      //     pageLength: (total / 9).ceil(),
                      //     currentPage: currentPage,
                      //     onPrevious: () {
                      //       ref
                      //           .read(historyNotifierProvider.notifier)
                      //           .getHistory(page: currentPage - 1);
                      //     },
                      //     onNext: () {
                      //       ref
                      //           .read(historyNotifierProvider.notifier)
                      //           .getHistory(page: currentPage + 1);
                      //     },
                      //     onTapIndex: (index) {
                      //       ref.read(historyNotifierProvider.notifier).getHistory(page: index);
                      //     })
                    ],
                  );
                },
                loading: () =>
                    const Center(child: CircularProgressIndicator()));
          }),
        ],
      ),
    );
  }
}
