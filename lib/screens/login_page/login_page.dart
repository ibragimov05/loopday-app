import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loopday_app/screens/main_screen.dart';
import 'package:loopday_app/screens/signup_page/signup_page.dart';
import 'package:loopday_app/utils/assets/images.dart';
import 'package:loopday_app/utils/colors/text_colors.dart';
import 'package:loopday_app/utils/extension/sized_box.dart';
import 'package:loopday_app/utils/widgets/custom_text_field.dart';
import 'package:loopday_app/utils/widgets/login_buttons.dart';
import 'package:loopday_app/utils/widgets/main_blue_button_for_next_page.dart';
import 'package:loopday_app/utils/widgets/text_loanas_terms_of_use.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userInputMailController = TextEditingController();

  TextEditingController userInputPasswordController = TextEditingController();
  String mailErrorMessage = '';
  String passwordErrorMessage = '';

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(left: 20.w, right: 20.w, top: 70.h, bottom: 10.h),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome back',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20.sp,
                    ),
                  ),
                  10.height(),
                  Text(
                    'Let\'s Login to Connect your email',
                    style: TextStyle(
                      color: CustomColor.textColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  20.height(),
                  CustomTextField(
                    icon: Icons.mail_outlined,
                    labelText: 'name@example.com',
                    isPassword: false,
                    textEditingController: userInputMailController,
                    errorMessage: mailErrorMessage,
                  ),
                  10.height(),
                  CustomTextField(
                    icon: Icons.key,
                    labelText: '****************',
                    isPassword: true,
                    textEditingController: userInputPasswordController,
                    errorMessage: passwordErrorMessage,
                  ),
                  10.height(),
                  Text(
                    'Forgot your password ?',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: CustomColor.textColor,
                      fontSize: 12.sp,
                    ),
                  ),
                  30.height(),
                  Center(
                    child: ZoomTapAnimation(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          CupertinoPageRoute(
                            builder: (context) {
                              return SignupPage();
                            },
                          ),
                        );
                      },
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Don\'t have an account? ',
                              style: TextStyle(
                                color: CustomColor.textColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'Sign up here',
                              style: TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              240.height(),
              Column(
                children: [
                  MainBlueButton(
                    buttonText: 'Login',
                    onTapFunction: () {
                      bool isTrueMail = false;
                      bool isTruePassword = false;

                      if (userInputMailController.text.isEmpty ||
                          !(userInputMailController.text.contains('@'))) {
                        setState(() {
                          mailErrorMessage = 'Enter a valid email';
                        });
                      } else {
                        setState(() {
                          mailErrorMessage = '';
                          isTrueMail = true;
                        });
                      }

                      if (userInputPasswordController.text.isEmpty ||
                          !(userInputPasswordController.text.length > 7)) {
                        setState(() {
                          passwordErrorMessage = 'Enter a valid password';
                        });
                      } else {
                        setState(() {
                          passwordErrorMessage = '';
                          isTruePassword = true;
                        });
                      }
                      if (isTrueMail && isTruePassword) {
                        Navigator.pushReplacement(
                          context,
                          CupertinoPageRoute(
                            builder: (context) {
                              return MainScreen();
                            },
                          ),
                        );
                      }
                    },
                  ),
                  10.height(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      LoginButtons(
                        icoPath: Assets.appleIcon,
                        buttonText: 'Apple',
                      ),
                      LoginButtons(
                        icoPath: Assets.googleIcon,
                        buttonText: 'Google',
                      ),
                    ],
                  ),
                  10.height(),
                  TermsOfUse(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
