// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ForgotPasswordScreen(),
      );
    },
    MyHomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MyHomePage(),
      );
    },
    UserProfileRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const UserProfileScreen(),
      );
    },
    ListTeacherRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    BookingStudentRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const BookingStudentScreen(),
      );
    },
    HistoryStudentRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HistoryStudentScreen(),
      );
    },
    CoursesRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    ListTeachRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ListTeachScreen(),
      );
    },
    TeacherDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TeacherDetailRouteArgs>(
          orElse: () => TeacherDetailRouteArgs(
              teacherId: pathParams.getString('teacherId')));
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: TeacherDetailScreen(
          key: args.key,
          teacherId: args.teacherId,
        ),
      );
    },
    CoursesRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CoursesScreen(),
      );
    },
    CourseInfoRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CourseInfoRouteArgs>(
          orElse: () =>
              CourseInfoRouteArgs(courseId: pathParams.getString('courseId')));
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: CourseInfoScreen(
          key: args.key,
          courseId: args.courseId,
        ),
      );
    },
    CourseDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CourseDetailRouteArgs>(
          orElse: () => CourseDetailRouteArgs(
                courseId: pathParams.getString('courseId'),
                topicId: pathParams.getInt('topicId'),
              ));
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: CourseDetailScreen(
          key: args.key,
          courseId: args.courseId,
          topicId: args.topicId,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '',
          fullMatch: true,
        ),
        RouteConfig(
          SplashRoute.name,
          path: '',
        ),
        RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        RouteConfig(
          ForgotPasswordRoute.name,
          path: '/password',
        ),
        RouteConfig(
          MyHomeRoute.name,
          path: '/home',
          children: [
            RouteConfig(
              ListTeacherRouter.name,
              path: 'list-teacher',
              parent: MyHomeRoute.name,
              children: [
                RouteConfig(
                  ListTeachRoute.name,
                  path: '',
                  parent: ListTeacherRouter.name,
                ),
                RouteConfig(
                  TeacherDetailRoute.name,
                  path: ':teacherId',
                  parent: ListTeacherRouter.name,
                ),
              ],
            ),
            RouteConfig(
              BookingStudentRoute.name,
              path: 'schedule',
              parent: MyHomeRoute.name,
            ),
            RouteConfig(
              HistoryStudentRoute.name,
              path: 'history',
              parent: MyHomeRoute.name,
            ),
            RouteConfig(
              CoursesRouter.name,
              path: 'courses',
              parent: MyHomeRoute.name,
              children: [
                RouteConfig(
                  CoursesRoute.name,
                  path: '',
                  parent: CoursesRouter.name,
                ),
                RouteConfig(
                  CourseInfoRoute.name,
                  path: ':courseId',
                  parent: CoursesRouter.name,
                ),
                RouteConfig(
                  CourseDetailRoute.name,
                  path: ':courseId/:topicId',
                  parent: CoursesRouter.name,
                ),
              ],
            ),
          ],
        ),
        RouteConfig(
          UserProfileRoute.name,
          path: 'user-profile',
        ),
      ];
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [ForgotPasswordScreen]
class ForgotPasswordRoute extends PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(
          ForgotPasswordRoute.name,
          path: '/password',
        );

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [MyHomePage]
class MyHomeRoute extends PageRouteInfo<void> {
  const MyHomeRoute({List<PageRouteInfo>? children})
      : super(
          MyHomeRoute.name,
          path: '/home',
          initialChildren: children,
        );

  static const String name = 'MyHomeRoute';
}

/// generated route for
/// [UserProfileScreen]
class UserProfileRoute extends PageRouteInfo<void> {
  const UserProfileRoute()
      : super(
          UserProfileRoute.name,
          path: 'user-profile',
        );

  static const String name = 'UserProfileRoute';
}

/// generated route for
/// [EmptyRouterPage]
class ListTeacherRouter extends PageRouteInfo<void> {
  const ListTeacherRouter({List<PageRouteInfo>? children})
      : super(
          ListTeacherRouter.name,
          path: 'list-teacher',
          initialChildren: children,
        );

  static const String name = 'ListTeacherRouter';
}

/// generated route for
/// [BookingStudentScreen]
class BookingStudentRoute extends PageRouteInfo<void> {
  const BookingStudentRoute()
      : super(
          BookingStudentRoute.name,
          path: 'schedule',
        );

  static const String name = 'BookingStudentRoute';
}

/// generated route for
/// [HistoryStudentScreen]
class HistoryStudentRoute extends PageRouteInfo<void> {
  const HistoryStudentRoute()
      : super(
          HistoryStudentRoute.name,
          path: 'history',
        );

  static const String name = 'HistoryStudentRoute';
}

/// generated route for
/// [EmptyRouterPage]
class CoursesRouter extends PageRouteInfo<void> {
  const CoursesRouter({List<PageRouteInfo>? children})
      : super(
          CoursesRouter.name,
          path: 'courses',
          initialChildren: children,
        );

  static const String name = 'CoursesRouter';
}

/// generated route for
/// [ListTeachScreen]
class ListTeachRoute extends PageRouteInfo<void> {
  const ListTeachRoute()
      : super(
          ListTeachRoute.name,
          path: '',
        );

  static const String name = 'ListTeachRoute';
}

/// generated route for
/// [TeacherDetailScreen]
class TeacherDetailRoute extends PageRouteInfo<TeacherDetailRouteArgs> {
  TeacherDetailRoute({
    Key? key,
    required String teacherId,
  }) : super(
          TeacherDetailRoute.name,
          path: ':teacherId',
          args: TeacherDetailRouteArgs(
            key: key,
            teacherId: teacherId,
          ),
          rawPathParams: {'teacherId': teacherId},
        );

  static const String name = 'TeacherDetailRoute';
}

class TeacherDetailRouteArgs {
  const TeacherDetailRouteArgs({
    this.key,
    required this.teacherId,
  });

  final Key? key;

  final String teacherId;

  @override
  String toString() {
    return 'TeacherDetailRouteArgs{key: $key, teacherId: $teacherId}';
  }
}

/// generated route for
/// [CoursesScreen]
class CoursesRoute extends PageRouteInfo<void> {
  const CoursesRoute()
      : super(
          CoursesRoute.name,
          path: '',
        );

  static const String name = 'CoursesRoute';
}

/// generated route for
/// [CourseInfoScreen]
class CourseInfoRoute extends PageRouteInfo<CourseInfoRouteArgs> {
  CourseInfoRoute({
    Key? key,
    required String courseId,
  }) : super(
          CourseInfoRoute.name,
          path: ':courseId',
          args: CourseInfoRouteArgs(
            key: key,
            courseId: courseId,
          ),
          rawPathParams: {'courseId': courseId},
        );

  static const String name = 'CourseInfoRoute';
}

class CourseInfoRouteArgs {
  const CourseInfoRouteArgs({
    this.key,
    required this.courseId,
  });

  final Key? key;

  final String courseId;

  @override
  String toString() {
    return 'CourseInfoRouteArgs{key: $key, courseId: $courseId}';
  }
}

/// generated route for
/// [CourseDetailScreen]
class CourseDetailRoute extends PageRouteInfo<CourseDetailRouteArgs> {
  CourseDetailRoute({
    Key? key,
    required String courseId,
    required int topicId,
  }) : super(
          CourseDetailRoute.name,
          path: ':courseId/:topicId',
          args: CourseDetailRouteArgs(
            key: key,
            courseId: courseId,
            topicId: topicId,
          ),
          rawPathParams: {
            'courseId': courseId,
            'topicId': topicId,
          },
        );

  static const String name = 'CourseDetailRoute';
}

class CourseDetailRouteArgs {
  const CourseDetailRouteArgs({
    this.key,
    required this.courseId,
    required this.topicId,
  });

  final Key? key;

  final String courseId;

  final int topicId;

  @override
  String toString() {
    return 'CourseDetailRouteArgs{key: $key, courseId: $courseId, topicId: $topicId}';
  }
}
