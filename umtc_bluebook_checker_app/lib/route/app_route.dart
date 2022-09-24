import 'package:flutter/material.dart';
import 'package:umtc_bluebook_checker_app/screen/dashboard/dashboard_screen.dart';
import 'package:umtc_bluebook_checker_app/screen/login/login_screen.dart';

const String sessionLogin = 'session_login';
const String dashboard = 'dashboard';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case sessionLogin:
      return MaterialPageRoute(builder: ((context) => const LoginScreen()));
    case dashboard:
      return MaterialPageRoute(builder: ((context) => const DashboardScreen()));
    default:
      throw ('This route does not exist!');
  }
}
