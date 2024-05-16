import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class MainBlueButton extends StatelessWidget {
  final String buttonText;
  final Function() onTapFunction;

  const MainBlueButton({
    super.key,
    required this.buttonText,
    required this.onTapFunction,
  });

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTapFunction,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.h,),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: const Color(0xFF4155FA),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
            ),
          ),
        ),
      ),
    );
  }
}
