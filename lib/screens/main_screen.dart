import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loopday_app/utils/colors/text_colors.dart';
import 'package:loopday_app/utils/extension/sized_box.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF111111),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Welcome, ',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: 'Mangoding',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            5.height(),
            Text(
              'Let\'s schedule your activities',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
        actions: [
          Container(
            height: 40.h,
            width: 40.w,
            margin: EdgeInsets.only(right: 10.w),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.notifications_none_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Schedule',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 18.sp,
                    ),
                  ),
                  Text(
                    'Let\'s schedule your activities',
                    style: TextStyle(
                        color: CustomColor.textColor,
                        fontWeight: FontWeight.w600),
                  ),
                  20.height(),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      vertical: 20.w,
                      horizontal: 10.h,
                    ),
                    decoration: BoxDecoration(
                        color: const Color(0xffe9e6e6),
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'January 2024',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Icon(Icons.keyboard_arrow_down_sharp)
                              ],
                            ),
                            Icon(Icons.add),
                          ],
                        ),
                        10.height(),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'T        M        W        T        ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17.sp,
                                ),
                              ),
                              TextSpan(
                                text: 'S        ',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17.sp,
                                ),
                              ),
                              TextSpan(
                                text: 'F        ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17.sp,
                                ),
                              ),
                              TextSpan(
                                text: 'S',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        10.height(),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    '16      17       18        19       20      ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              TextSpan(
                                text: ' 21       22',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            20.height(),
            const Divider(),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(5.sp),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: Colors.grey)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 15.h,
                            horizontal: 65.w,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFF4155FA),
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: const Text(
                            'All',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 15.h,
                            horizontal: 65.w,
                          ),
                          child: const Text(
                            'New',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  ),
                  20.height(),
                  containerMaker(),
                  20.height(),
                  containerMaker(),
                  20.height(),
                  containerMaker(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Color.fromARGB(255, 19, 108, 216),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.edit,
              color: Colors.grey.withOpacity(0.5),
            ),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month,
              color: Colors.grey.withOpacity(0.5),
            ),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey.withOpacity(0.5),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget containerMaker() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
        color: const Color(0xffe9e6e6),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sun, 20/1/2023',
                style: TextStyle(
                    color: CustomColor.textColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 13.sp),
              ),
              Text(
                '10.00 AM - 01.00 PM',
                style: TextStyle(
                    color: CustomColor.textColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 13.sp),
              )
            ],
          ),
          10.height(),
          Text(
            'Development of software for the protection of information resources',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          15.height(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 3.h),
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: const Center(
                  child: Text(
                    'Urgent',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
