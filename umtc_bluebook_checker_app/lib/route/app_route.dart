import 'package:flutter/material.dart';
import 'package:umtc_bluebook_checker_app/screen/login/login_screen.dart';

const String sessionLogin = 'session_login';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case sessionLogin:
      return MaterialPageRoute(builder: ((context) => const LoginScreen()));
    default:
      throw ('This route does not exist!');
  }
}
