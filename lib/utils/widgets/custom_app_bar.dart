import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  final Widget nextPageName;

  const CustomAppBar({super.key, required this.nextPageName});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
        height: 35.h,
        width: 35.w,
        decoration: BoxDecoration(
          color: Color(0xFFE6E6E6),
          shape: BoxShape.circle,
        ),
        child: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              CupertinoPageRoute(
                builder: (context) {
                  return nextPageName;
                },
              ),
            );
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            size: 17.sp,
          ),
        ),
      ),
    );
  }
}
