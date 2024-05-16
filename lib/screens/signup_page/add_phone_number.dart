import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:loopday_app/screens/signup_page/confirm_number.dart';
import 'package:loopday_app/screens/signup_page/signup_page.dart';
import 'package:loopday_app/utils/colors/text_colors.dart';
import 'package:loopday_app/utils/extension/sized_box.dart';
import 'package:loopday_app/utils/widgets/custom_app_bar.dart';
import 'package:loopday_app/utils/widgets/main_blue_button_for_next_page.dart';
import 'package:loopday_app/utils/widgets/text_loanas_terms_of_use.dart';

class AddPhoneNumber extends StatelessWidget {
  const AddPhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(nextPageName: SignupPage()),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Country of residence',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              10.height(),
              Text(
                'Add your Phone number for Verification ID',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: CustomColor.textColor,
                ),
              ),
              20.height(),
              InternationalPhoneNumberInput(
                onInputChanged: (value) {},
              ),
              20.height(),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Send it another way ? ',
                      style: TextStyle(
                        color: CustomColor.textColor,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const TextSpan(
                      text: 'Email',
                      style: TextStyle(
                        color: Color(0xFF4454fc),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              440.height(),
              MainBlueButton(
                buttonText: 'Continue',
                onTapFunction: () {
                  Navigator.pushReplacement(
                    context,
                    CupertinoPageRoute(
                      builder: (context) {
                        return const ConfirmNumber();
                      },
                    ),
                  );
                },
              ),
              10.height(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
