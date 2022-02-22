import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:foodie/constants.dart';

class PasswordChanged extends StatefulWidget {
  @override
  _PasswordChangedState createState() => _PasswordChangedState();
}

class _PasswordChangedState extends State<PasswordChanged> {
  late String otp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 15.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'FOODIE',
                      style: GoogleFonts.laila(
                        textStyle: kTitleTextStyle,
                      ),
                    ),
                    SizedBox(width: 2.w),
                    kTitleImage
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Password Changed',
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff08c03a))),
                    ),
                    Icon(
                      Icons.check,
                      color: Color(0xff08c03a),
                      size: 17.h,
                    )
                  ],
                ),
              ]),
              SizedBox(
                height: 11.h,
              ),
              Container(
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                    color: Color(0xffFE8668),
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                child: Center(
                  child: Text(
                    'Login',
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black)),
                  ),
                ),
                height: 8.h,
                width: 90.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
