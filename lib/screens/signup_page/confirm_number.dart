import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loopday_app/screens/signup_page/add_phone_number.dart';
import 'package:loopday_app/utils/colors/text_colors.dart';
import 'package:loopday_app/utils/extension/sized_box.dart';
import 'package:loopday_app/utils/widgets/custom_app_bar.dart';

class ConfirmNumber extends StatelessWidget {
  const ConfirmNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
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
              Row(
                children: [
                  Icon(Icons.help, size: 15.sp,color: CustomColor.textColor,),
                  Text(
                    'Helper text',
                    style: TextStyle(
                      color: CustomColor.textColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )
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
}
