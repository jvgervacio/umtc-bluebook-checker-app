import 'package:flutter/material.dart';
import 'package:umtc_bluebook_checker_app/route/app_route.dart' as route;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Bluebook Checker Client App',
      debugShowCheckedModeBanner: false,
      initialRoute: route.sessionLogin,
      onGenerateRoute: route.onGenerateRoute,
    );
  }
}
