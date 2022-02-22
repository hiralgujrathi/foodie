import 'package:flutter/material.dart';
import 'login.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:foodie/constants.dart';
import 'package:foodie/customclass.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SafeArea(
      child: Scaffold(
        // ignore: prefer_const_constructors
        backgroundColor: Color(0xffffffff),
        body: Column(
          children: [
            ClipPath(
              child: Container(
                height: 50.h,
                width: double.infinity,
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                  // ignore: prefer_const_constructors
                  color: Color(0xffFEC2B3),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // ignore: prefer_const_constructors
                        Padding(
                          padding: EdgeInsets.only(right: 3.w, top: 3.h),
                          child: Image.asset(
                            'images/ice_cream.png',
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.w, top: 5.h),
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
                    )
                  ],
                ),
              ),
              clipper: ClipCustomClass(),
            ),
            SizedBox(height: 4.h),
            Text(
              'Welcome!',
              style: GoogleFonts.inter(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 35.sp,
                      color: Colors.black)),
            ),
            SizedBox(height: 3.h),
            Text(
              'Whatever you love,we have it',
              style: GoogleFonts.inter(textStyle: kGeneralTextStyle),
            ),
            SizedBox(height: 3.h),
            Container(
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                  color: Color(0xffFE8668),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Center(
                child: Text(
                  'Sign up',
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
            SizedBox(height: 4.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account? ',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: Colors.black),
                    )),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    'Log in',
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black)),
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
