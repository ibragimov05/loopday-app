import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loopday_app/screens/main_page/main_page.dart';
import 'package:loopday_app/utils/colors/text_colors.dart';
import 'package:loopday_app/utils/extension/sized_box.dart';
import 'package:loopday_app/utils/widgets/main_blue_button_for_next_page.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5FA),
      body: Padding(
        padding: EdgeInsets.only(left: 10.0.w, right: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView(
                children: [
                  littleContainer(
                    color: Colors.black,
                    photoPath: 'assets/images/onboarding/1.png',
                    isSelected: 0,
                  ),
                  littleContainer(
                    color: Colors.black,
                    photoPath: 'assets/images/onboarding/2.png',
                    isSelected: 1,
                  ),
                  littleContainer(
                    color: Colors.black,
                    photoPath: 'assets/images/onboarding/3.png',
                    isSelected: 2,
                  ),
                ],
              ),
            ),
            30.height(),
            Text(
              'Set Your Schedule',
              style: TextStyle(
                color: Colors.black,
                fontSize: 33.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'Quickly see your upcoming event, task, conference calls, weather, and more',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: CustomColor.textColor,
              ),
            ),
            20.height(),
            MainBlueButton(
              buttonText: 'Get started',
              onTapFunction: () {
                Navigator.pushReplacement(
                  context,
                  CupertinoPageRoute(
                    builder: (context) {
                      return const MainPage();
                    },
                  ),
                );
              },
            ),
            20.height(),
          ],
        ),
      ),
    );
  }

  Widget littleContainer({
    required Color color,
    required String photoPath,
    required int isSelected,
  }) {
    return Container(
      alignment: Alignment.bottomCenter,
      width: 300.w,
      height: 300.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            photoPath,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < 3; i++)
            Container(
              width: i == isSelected ? 30.w : 5.w,
              height: 5.h,
              margin: EdgeInsets.only(right: 5.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: const Color(0xFF5363FA),
              ),
            ),
        ],
      ),
    );
  }
}
