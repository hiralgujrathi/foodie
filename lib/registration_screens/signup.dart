import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:foodie/constants.dart';
import 'Registration.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        centerTitle: true,
        elevation: 0,
        leading: Icon(
          Icons.close,
          color: Colors.black,
        ),
        title: Text(
          'Sign up',
          style: GoogleFonts.inter(textStyle: kPageTitleStyle),
        ),
      ),
      body: SingleChildScrollView(
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
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                child: Text(
                  'Email',
                  style: GoogleFonts.lato(
                    textStyle: kGeneralinfoStyle,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: kTextFieldDecoration,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                child: Text(
                  'Password',
                  style: GoogleFonts.lato(
                    textStyle: kGeneralinfoStyle,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: TextField(
                  obscureText: true,
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
                  'Get Started',
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
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(children: [
                Expanded(
                  child: Divider(
                    color: Color(0xffe5e5e5),
                  ),
                ),
                Text(
                  "or",
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w900,
                          color: Colors.black)),
                ),
                Expanded(
                  child: Divider(
                    color: Color(0xffe5e5e5),
                  ),
                ),
              ]),
            ),
            SizedBox(height: 3.h),
            Registration(
              image: AssetImage('images/fb.png'),
              title: 'Continue with Facebook',
            ),
            SizedBox(height: 2.h),
            Registration(
              image: AssetImage(
                'images/logogoogle.png',
              ),
              title: 'Continue with Google',
            ),
            SizedBox(height: 3.h),
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
                        MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  child: Text(
                    'Login',
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
