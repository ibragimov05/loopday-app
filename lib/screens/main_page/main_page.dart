import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loopday_app/screens/login_page/login_page.dart';
import 'package:loopday_app/screens/signup_page/signup_page.dart';
import 'package:loopday_app/utils/assets/images.dart';
import 'package:loopday_app/utils/colors/text_colors.dart';
import 'package:loopday_app/utils/extension/sized_box.dart';
import 'package:loopday_app/utils/widgets/login_buttons.dart';
import 'package:loopday_app/utils/widgets/main_blue_button_for_next_page.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
          child: Column(
            children: [
              60.height(),
              Column(
                children: [
                  Text(
                    'Let\'s start your Schedule activity',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Quickly see you upcoming event, task, conference calls, weather, and more',
                    style: TextStyle(
                      color: CustomColor.textColor,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              35.height(),
              Container(
                width: 300.w,
                height: 350.h,
                color: Colors.yellow,
                child: Image.asset(
                  'assets/images/create_account_page/phone.png',
                  fit: BoxFit.fill,
                ),
              ),
              15.height(),
        
              /// button for taking next page
              MainBlueButton(
                buttonText: 'Create Account',
                onTapFunction: () {
                  Navigator.pushReplacement(
                    context,
                    CupertinoPageRoute(
                      builder: (context) {
                        return SignupPage();
                      },
                    ),
                  );
                },
              ),
        
              /// two button to login via apple or google
              20.height(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  LoginButtons(icoPath: Assets.appleIcon, buttonText: 'Apple'),
                  LoginButtons(icoPath: Assets.googleIcon, buttonText: 'Google'),
                ],
              ),
              30.height(),
        
              /// login button
              ZoomTapAnimation(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    CupertinoPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ),
                  );
                },
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'You Have Account?',
                        style: TextStyle(
                            color: CustomColor.textColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.sp),
                      ),
                      TextSpan(
                        text: ' Log in',
                        style: TextStyle(
                          color: const Color(0xFF5363FA),
                          fontWeight: FontWeight.w800,
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
