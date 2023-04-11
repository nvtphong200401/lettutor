import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/material.dart';
import 'package:lettutor/main.dart';
import 'package:lettutor/presentation/authen/login_screen.dart';
import 'package:lettutor/presentation/authen/splash_screen.dart';
import 'package:lettutor/presentation/courses/courses_screen.dart';
import 'package:lettutor/presentation/courses/detail/course_detail_screen.dart';
import 'package:lettutor/presentation/courses/detail/course_info_screen.dart';
import 'package:lettutor/presentation/history/history_student_screen.dart';
import 'package:lettutor/presentation/schedule/booking_student.dart';
import 'package:lettutor/presentation/stream/stream_screen.dart';
import 'package:lettutor/presentation/teacher/detail/teacher_detail_screen.dart';
import 'package:lettutor/presentation/teacher/list_teacher_screen.dart';
import 'package:lettutor/presentation/user/user_profile_screen.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page|Screen,Route',
  routes: [
    AutoRoute(
      path: '',
      page: SplashScreen,
      initial: true,
    ),
    CustomRoute(
        page: LoginScreen,
        path: '/login',
        transitionsBuilder: TransitionsBuilders.fadeIn,
        durationInMilliseconds: 1000),
    AutoRoute(
      path: '/home',
      page: MyHomePage,
      children: [
        AutoRoute(
            path: 'list-teacher',
            name: 'ListTeacherRouter',
            page: EmptyRouterPage,
            children: [
              AutoRoute(
                path: '',
                page: ListTeachScreen,
              ),
              AutoRoute(
                path: ':teacherId',
                page: TeacherDetailScreen,
              ),
            ]),
        AutoRoute(
          path: 'schedule',
          page: BookingStudentScreen,
        ),
        AutoRoute(
          path: 'history',
          page: HistoryStudentScreen,
        ),
        AutoRoute(
          path: 'courses',
          page: EmptyRouterPage,
          name: 'CoursesRouter',
          children: [
            AutoRoute(path: '', page: CoursesScreen),
            AutoRoute(path: ':courseId', page: CourseInfoScreen),
            AutoRoute(path: ':courseId/:topicId', page: CourseDetailScreen),
          ],
        ),
      ],
    ),
    AutoRoute(
      path: 'user-profile',
      page: UserProfileScreen,
    ),
    AutoRoute(
      path: 'call',
      page: StreamScreen,
    ),
  ],
)
class AppRouter extends _$AppRouter {}
