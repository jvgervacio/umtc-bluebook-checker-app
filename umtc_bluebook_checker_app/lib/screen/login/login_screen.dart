import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:umtc_bluebook_checker_app/route/app_route.dart' as route;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late StreamController<ErrorAnimationType> errorController;

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();

    super.initState();
  }

  @override
  void dispose() {
    errorController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, widget) => Scaffold(
        body: Center(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Enter the session ID"),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: 300.w,
                  alignment: Alignment.center,
                  child: PinCodeTextField(
                    keyboardType: TextInputType.number,
                    errorAnimationController: errorController,
                    useHapticFeedback: true,
                    cursorColor: Colors.blue,
                    appContext: context,
                    length: 6,
                    animationType: AnimationType.fade,
                    animationDuration: const Duration(milliseconds: 100),
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.underline,
                      inactiveColor: Colors.black,
                      errorBorderColor: Colors.redAccent,
                      activeFillColor: Colors.blue,
                    ),
                    onChanged: (txt) => {},
                  ),
                ),
                SizedBox(
                  height: 60.h,
                ),
                MaterialButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed(route.dashboard),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: const Text("Connect Now"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
