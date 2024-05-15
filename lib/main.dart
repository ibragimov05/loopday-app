import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loopday_app/screens/main_page/main_page.dart';
import 'package:loopday_app/screens/onboarding/onboarding_1.dart';
import 'package:loopday_app/screens/signup_page/add_phone_number.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Onboarding(),
      ),
    );
  }
}
