import 'package:dio/dio.dart';
import 'package:lettutor/core/presentation/common_widgets/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationInterceptor extends QueuedInterceptor {
  final SharedPreferences _preferences;

  AuthenticationInterceptor(this._preferences);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    await _assignHeaders(options);
    super.onRequest(options, handler);
  }

  Future<void> _assignHeaders(RequestOptions options) async {
    final accessToken = _preferences.getString(accessTokenKey);
    options.headers['Authorization'] = 'Bearer $accessToken';
    options.headers['Content-Type'] = 'application/json';
  }
}
