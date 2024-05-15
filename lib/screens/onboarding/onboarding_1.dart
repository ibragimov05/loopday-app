import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 350.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Colors.yellow,
                    border: Border.all(
                        color: Colors.grey.withOpacity(0.5), width: 2.w),
                  ),
                ),
                Align(
                  // alignment: ,
                  // top: 0,
                  // right: 100,
                  child: Container(
                    width: 140.w,
                    height: 60.h,
                    decoration: BoxDecoration(color: Colors.yellow),
                    child: Center(
                      child: Text(
                        'Loopday App',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 25.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
