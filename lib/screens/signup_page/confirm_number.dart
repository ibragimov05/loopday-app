import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loopday_app/screens/main_screen.dart';
import 'package:loopday_app/screens/signup_page/add_phone_number.dart';
import 'package:loopday_app/utils/colors/text_colors.dart';
import 'package:loopday_app/utils/extension/sized_box.dart';
import 'package:loopday_app/utils/widgets/custom_app_bar.dart';
import 'package:loopday_app/utils/widgets/main_blue_button_for_next_page.dart';
import 'package:loopday_app/utils/widgets/text_loanas_terms_of_use.dart';

class ConfirmNumber extends StatefulWidget {
  const ConfirmNumber({super.key});

  @override
  State<ConfirmNumber> createState() => _ConfirmNumberState();
}

class _ConfirmNumberState extends State<ConfirmNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(
          nextPageName: AddPhoneNumber(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Confirm your phone number',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              10.height(),
              Text(
                'Check your message, because we send you a code for Verification',
                style: TextStyle(
                  fontSize: 13.sp,
                  color: CustomColor.textColor,
                ),
              ),
              20.height(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (int i = 0; i < 4; i++) containerMaker(),
                ],
              ),
              20.height(),
              Row(
                children: [
                  Icon(
                    Icons.help,
                    size: 15.sp,
                    color: CustomColor.textColor,
                  ),
                  5.width(),
                  Text(
                    'Helper text',
                    style: TextStyle(
                      color: CustomColor.textColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              400.height(),
              MainBlueButton(
                buttonText: 'Continue',
                onTapFunction: () {
                  showMessage();
                },
              ),
              const Center(child: TermsOfUse()),
            ],
          ),
        ),
      ),
    );
  }

  Widget containerMaker() {
    return Container(
      height: 55.h,
      width: 70.w,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
        ),
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3.r,
          ),
        ],
      ),
      child: Center(
        child: Text(
          '0',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
            fontSize: 20.sp,
          ),
        ),
      ),
    );
  }

  void showMessage() async {
    await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: Column(
              children: [
                Container(
                  width: 100.w,
                  height: 100.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Icon(
                    Icons.check,
                    color: const Color.fromARGB(255, 19, 108, 216),
                    size: 40.sp,
                  ),
                ),
                // const Gap(30),
                30.height(),
                Text(
                  "Your account has active",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Congratulation you are success to change your profile',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 14.sp, color: CustomColor.textColor),
                )
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    CupertinoPageRoute(
                      builder: (context) {
                        return const MainScreen();
                      },
                    ),
                  );
                },
                child: Container(
                  width: 1.sw,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 19, 108, 216),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      "OK",
                      style: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
    );
  }
}
