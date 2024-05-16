import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loopday_app/utils/colors/text_colors.dart';

class TermsOfUse extends StatelessWidget {
  const TermsOfUse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230.w,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'By continuing you agree to Loana\'s ',
              style: TextStyle(
                color: CustomColor.textColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            const TextSpan(
              text: 'Terms of Use',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextSpan(
              text: ' & ',
              style: TextStyle(
                color: CustomColor.textColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            const TextSpan(
              text: 'Privacy Policy',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
