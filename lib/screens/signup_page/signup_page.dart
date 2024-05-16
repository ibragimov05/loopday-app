import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loopday_app/screens/signup_page/add_phone_number.dart';
import 'package:loopday_app/screens/login_page/login_page.dart';
import 'package:loopday_app/screens/main_page/main_page.dart';
import 'package:loopday_app/utils/colors/text_colors.dart';
import 'package:loopday_app/utils/extension/sized_box.dart';
import 'package:loopday_app/utils/widgets/custom_app_bar.dart';
import 'package:loopday_app/utils/widgets/custom_text_field.dart';
import 'package:loopday_app/utils/widgets/main_blue_button_for_next_page.dart';
import 'package:loopday_app/utils/widgets/text_loanas_terms_of_use.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
  }

  TextEditingController userInputNameController = TextEditingController();
  TextEditingController userInputMailController = TextEditingController();
  TextEditingController userInputPassword1Controller = TextEditingController();
  TextEditingController userInputPassword2Controller = TextEditingController();

  String errorMessageNameController = '';
  String errorMessageMailController = '';
  String errorMessagePassword1Controller = '';
  String errorMessagePassword2Controller = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// back button
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(nextPageName: MainPage()),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// texts
              Text(
                'Register',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              10.height(),
              Text(
                'Create your account for your schedule',
                style: TextStyle(
                  color: CustomColor.textColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              20.height(),

              /// custom text fields for user to enter info
              CustomTextField(
                icon: Icons.person,
                labelText: 'Your name',
                isPassword: false,
                errorMessage: errorMessageNameController,
                textEditingController: userInputNameController,
              ),
              10.height(),
              CustomTextField(
                icon: Icons.mail_outlined,
                labelText: 'Your Email',
                isPassword: false,
                errorMessage: errorMessageMailController,
                textEditingController: userInputMailController,
              ),
              10.height(),
              CustomTextField(
                icon: Icons.key,
                labelText: '****************',
                isPassword: true,
                errorMessage: errorMessagePassword1Controller,
                textEditingController: userInputPassword1Controller,
              ),
              10.height(),
              CustomTextField(
                icon: Icons.key,
                labelText: '****************',
                isPassword: true,
                errorMessage: errorMessagePassword2Controller,
                textEditingController: userInputPassword2Controller,
              ),
              20.height(),

              /// sig in in button
              Center(
                child: ZoomTapAnimation(
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
                          text: 'You have an account? ',
                          style: TextStyle(
                            color: CustomColor.textColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const TextSpan(
                          text: 'Sign in here',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              150.height(),

              /// button to open next page
              MainBlueButton(
                buttonText: 'Continue',
                onTapFunction: () {
                  if (userInputNameController.text.isEmpty) {
                    setState(() {
                      errorMessageNameController = 'Enter a valid name';
                    });
                  } else {
                    setState(() {
                      errorMessageNameController = '';
                    });
                  }
                  if (userInputMailController.text.isEmpty ||
                      !userInputMailController.text.contains('@')) {
                    setState(() {
                      errorMessageMailController = 'Enter a valid email';
                    });
                  } else {
                    setState(() {
                      errorMessageMailController = '';
                    });
                  }
                  if (userInputPassword1Controller.text !=
                      userInputPassword2Controller.text) {
                    setState(() {
                      errorMessagePassword1Controller =
                          'Password should be similar';
                      errorMessagePassword2Controller =
                          'Password should be similar';
                    });
                  } else {
                    setState(() {
                      errorMessagePassword1Controller = '';
                      errorMessagePassword2Controller = '';
                    });
                  }
                  if (!(userInputPassword1Controller.text.length > 7)) {
                    setState(() {
                      errorMessagePassword1Controller =
                          'Password should be longer than 8 characters';
                    });
                  } else {
                    setState(() {
                      errorMessagePassword1Controller = '';
                    });
                  }
                  if (errorMessageNameController == '' &&
                      errorMessageMailController == '' &&
                      errorMessagePassword1Controller == '' &&
                      errorMessagePassword2Controller == '') {
                    Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                        builder: (context) {
                          return const AddPhoneNumber();
                        },
                      ),
                    );
                  }
                },
              ),
              10.height(),

              /// terms of use text
              const Center(child: TermsOfUse()),
            ],
          ),
        ),
      ),
    );
  }
}
