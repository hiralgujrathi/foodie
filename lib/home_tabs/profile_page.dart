import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:foodie/customclass.dart';
import 'package:foodie/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          ClipPath(
            child: Container(
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Padding(
                      padding: EdgeInsets.only(right: 4.w, top: 3.h),
                      child: Icon(
                        Icons.person,
                        size: 8.w,
                      ),
                    ),
                  ]),
                  Padding(
                    padding: EdgeInsets.only(top: 2.5.h),
                    child: Text(
                      'Profile',
                      style: GoogleFonts.inter(textStyle: kPageTitleTextStyle),
                    ),
                  ),
                ],
              ),
              height: 18.h,
              width: double.infinity,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                // ignore: prefer_const_constructors
                color: Color(0xffFEC2B3),
              ),
            ),
            clipper: ClipCustomClass(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.h, left: 4.w),
            child: Row(
              children: [
                Text(
                  'Add Your Address ',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: Color(0xff3a3a3a))),
                ),
                Icon(
                  Icons.add,
                  size: 7.w,
                  color: Color(0xff3a3a3a),
                )
              ],
            ),
          ),
          divider(),
          Profile(
            info: 'Settings',
            icon: Icon(Icons.settings_outlined,
                color: Color(0xff3a3a3a), size: 7.w),
          ),
          divider(),
          Profile(
              info: 'Need help?',
              icon: Icon(Icons.quiz_rounded,
                  color: Color(0xff3a3a3a), size: 7.w)),
          divider(),
          Profile(
            info: 'Your Orders',
            icon: Icon(Icons.assignment, color: Color(0xff3a3a3a), size: 7.w),
          )
        ]),
      ),
    );
  }
}
