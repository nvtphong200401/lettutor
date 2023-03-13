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
        durationInMilliseconds: 1000,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MyHomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MyHomePage(),
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
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const TeacherDetailScreen(),
      );
    },
    CoursesRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CoursesScreen(),
      );
    },
    CourseDetailRoute.name: (routeData) {
      final args = routeData.argsAs<CourseDetailRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: CourseDetailScreen(
          key: args.key,
          title: args.title,
          courseUrl: args.courseUrl,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        RouteConfig(
          MyHomeRoute.name,
          path: '/my-home-page',
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
                RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: ListTeacherRouter.name,
                  redirectTo: '',
                  fullMatch: true,
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
                  CourseDetailRoute.name,
                  path: ':courseId',
                  parent: CoursesRouter.name,
                ),
              ],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
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
/// [MyHomePage]
class MyHomeRoute extends PageRouteInfo<void> {
  const MyHomeRoute({List<PageRouteInfo>? children})
      : super(
          MyHomeRoute.name,
          path: '/my-home-page',
          initialChildren: children,
        );

  static const String name = 'MyHomeRoute';
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
class TeacherDetailRoute extends PageRouteInfo<void> {
  const TeacherDetailRoute()
      : super(
          TeacherDetailRoute.name,
          path: ':teacherId',
        );

  static const String name = 'TeacherDetailRoute';
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
/// [CourseDetailScreen]
class CourseDetailRoute extends PageRouteInfo<CourseDetailRouteArgs> {
  CourseDetailRoute({
    Key? key,
    required String title,
    required String courseUrl,
  }) : super(
          CourseDetailRoute.name,
          path: ':courseId',
          args: CourseDetailRouteArgs(
            key: key,
            title: title,
            courseUrl: courseUrl,
          ),
        );

  static const String name = 'CourseDetailRoute';
}

class CourseDetailRouteArgs {
  const CourseDetailRouteArgs({
    this.key,
    required this.title,
    required this.courseUrl,
  });

  final Key? key;

  final String title;

  final String courseUrl;

  @override
  String toString() {
    return 'CourseDetailRouteArgs{key: $key, title: $title, courseUrl: $courseUrl}';
  }
}
