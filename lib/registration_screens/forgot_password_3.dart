import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:foodie/constants.dart';

class ForgotPassword2 extends StatefulWidget {
  @override
  _ForgotPassword2State createState() => _ForgotPassword2State();
}

class _ForgotPassword2State extends State<ForgotPassword2> {
  late String password;
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
              SizedBox(height: 7.h),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'OTP CONFIRMED',
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff08C03A))),
                    ),
                    Text(
                      'Now you can change your password.',
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff686B6F))),
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                  child: Text(
                    'Enter new Password',
                    style: GoogleFonts.lato(
                      textStyle: kGeneralinfoStyle,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: TextField(
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      password = value;
                    },
                    decoration: kTextFieldPasswordDecoration,
                  ),
                ),
                SizedBox(height: 3.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                  child: Text(
                    'Confirm new Password',
                    style: GoogleFonts.lato(
                      textStyle: kGeneralinfoStyle,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: TextField(
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      password = value;
                    },
                    decoration: kTextFieldPasswordDecoration,
                  ),
                ),
              ]),
              SizedBox(
                height: 6.h,
              ),
              Container(
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                    color: Color(0xffFE8668),
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                child: Center(
                  child: Text(
                    'Submit',
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
