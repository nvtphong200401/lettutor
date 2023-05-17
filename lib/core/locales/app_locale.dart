mixin AppLocale {
  static const String teacher = 'teacher';
  static const String schedule = 'schedule';
  static const String history = 'history';
  static const String courses = 'courses';
  static const String upcommingLesson = 'Up comming lesson';
  static const String noUpcommingLesson = 'You have no upcomming lesson.';
  static const String enterLessonRoom = 'Enter lesson room';
  static const String totalLessonTime = 'Total lesson time is';
  static const String hours = 'hours';
  static const String minutes = 'minutes';
  static const String findATutor = 'Find a tutor';
  static const String recommendedTutors = 'Recommended Tutors';
  static const String startsIn = 'starts in';
  static const String enterTutorName = 'Enter tutor name';
  static const String selectNationality = 'Select nationality';
  static const String cannotFindTutor = 'Cannot find any tutor';
  static const String book = 'Book';
  static const String historyDesc1 = 'The following is a list of lessons you have attended';
  static const String historyDesc2 = 'You can review the details of the lessons you have attended';
  static const String cannotFindHistory = 'Cannot find history';
  static const String requestForLesson = 'Request for lesson';
  static const String tutorHaventReview = 'Tutor haven\'t reviewed yet';
  static const String addARating = 'Add a rating';
  static const String report = 'Report';
  static const String daysAgo = 'days ago';
  static const String discoverCourses = 'Discover Courses';
  static const String searchCourses = 'Search courses';
  static const String selectCategory = 'Select category';
  static const String scheduleDesc1 = 'Here is a list of the sessions you have booked';
  static const String scheduleDesc2 =
      'You can track when the meeting starts, join the meeting with one click or can cancel the meeting before 2 hours';
  static const String cancel = 'Cancel';
  static const String session = 'Session';
  static const String lesson = 'Lesson';
  static const String goToMeeting = 'Go to meeting';
  static const String settings = 'Settings';
  static const String language = 'Language';
  static const String theme = 'Theme';
  static const String profile = 'Profile';
  static const String becomeTutor = 'Become a tutor';
  static const String logout = 'Logout';
  static const String searchEbook = 'Search E-book';
  static const String noData = 'No Data';

  static final Map<String, dynamic> en = Map.fromEntries(_enLocale.map((e) => MapEntry(e, e)));
  static const Map<String, dynamic> vn = _viLocale;
}

const _enLocale = <String>{
  AppLocale.teacher,
  AppLocale.schedule,
  AppLocale.history,
  AppLocale.courses,
  AppLocale.upcommingLesson,
  AppLocale.noUpcommingLesson,
  AppLocale.enterLessonRoom,
  AppLocale.totalLessonTime,
  AppLocale.hours,
  AppLocale.minutes,
  AppLocale.findATutor,
  AppLocale.recommendedTutors,
  AppLocale.startsIn,
  AppLocale.enterTutorName,
  AppLocale.selectNationality,
  AppLocale.cannotFindTutor,
  AppLocale.book,
  AppLocale.historyDesc1,
  AppLocale.historyDesc2,
  AppLocale.cannotFindHistory,
  AppLocale.requestForLesson,
  AppLocale.tutorHaventReview,
  AppLocale.addARating,
  AppLocale.report,
  AppLocale.daysAgo,
  AppLocale.discoverCourses,
  AppLocale.searchCourses,
  AppLocale.selectCategory,
  AppLocale.scheduleDesc1,
  AppLocale.scheduleDesc2,
  AppLocale.cancel,
  AppLocale.session,
  AppLocale.lesson,
  AppLocale.goToMeeting,
  AppLocale.settings,
  AppLocale.language,
  AppLocale.theme,
  AppLocale.becomeTutor,
  AppLocale.profile,
  AppLocale.logout,
  AppLocale.searchEbook,
  AppLocale.noData
};
const _viLocale = {
  AppLocale.teacher: 'Giáo viên',
  AppLocale.schedule: 'Lịch học',
  AppLocale.history: 'Lịch sử',
  AppLocale.courses: 'Khoá học',
  AppLocale.upcommingLesson: 'Buổi học sắp diễn ra',
  AppLocale.noUpcommingLesson: 'Không có buổi học nào sắp diễn ra',
  AppLocale.enterLessonRoom: 'Vào lớp học',
  AppLocale.totalLessonTime: 'Tổng số thời gian bạn đã học là',
  AppLocale.hours: 'giờ',
  AppLocale.minutes: 'phút',
  AppLocale.findATutor: 'Tìm kiếm gia sư',
  AppLocale.recommendedTutors: 'Gia sư được đề xuất',
  AppLocale.startsIn: 'bắt đầu trong',
  AppLocale.enterTutorName: 'Nhập tên gia sư',
  AppLocale.selectNationality: 'Chọn quốc tịch',
  AppLocale.cannotFindTutor: 'Không thể tìm thấy giáo viên',
  AppLocale.book: 'Đặt',
  AppLocale.historyDesc1: 'Sau đây là danh sách các bài học bạn đã tham dự',
  AppLocale.historyDesc2: 'Bạn có thể xem lại chi tiết các buổi học mình đã tham gia',
  AppLocale.cannotFindHistory: 'Không thể tìm thấy lịch sử',
  AppLocale.requestForLesson: 'Yêu cầu cho buổi học',
  AppLocale.tutorHaventReview: 'Giáo viên chưa đánh giá',
  AppLocale.addARating: 'Thêm đánh giá',
  AppLocale.report: 'Báo cáo',
  AppLocale.daysAgo: 'ngày trước',
  AppLocale.discoverCourses: 'Khám phá các khoá học',
  AppLocale.searchCourses: 'Tìm kiếm khoá học',
  AppLocale.selectCategory: 'Chọn danh mục',
  AppLocale.scheduleDesc1: 'Đây là danh sách những khung giờ bạn đã đặt',
  AppLocale.scheduleDesc2:
      'Bạn có thể theo dõi khi nào buổi học bắt đầu, tham gia buổi học bằng một cú nhấp chuột hoặc có thể hủy buổi học trước 2 tiếng.',
  AppLocale.cancel: 'Huỷ',
  AppLocale.lesson: 'Buổi học',
  AppLocale.session: 'Ca',
  AppLocale.goToMeeting: 'Vào buổi học',
  AppLocale.settings: 'Cài đặt',
  AppLocale.language: 'Ngôn ngữ',
  AppLocale.theme: 'Màu chủ đề',
  AppLocale.profile: 'Hồ sơ',
  AppLocale.becomeTutor: 'Trở thành gia sư',
  AppLocale.logout: 'Đăng xuất',
  AppLocale.searchEbook: 'Tìm kiếm sách',
  AppLocale.noData: 'Không có dữ liệu'
};
