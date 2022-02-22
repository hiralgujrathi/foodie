import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:foodie/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

var percentAge;

class LocationPage extends StatefulWidget {
  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          buildClipPath(''),
          SizedBox(
            height: 2.h,
          ),
          Text(
            'Your order is on the way',
            style: GoogleFonts.inter(textStyle: kGeneralTextStyle),
          ),
          SizedBox(
            height: 2.h,
          ),
          Image.asset('images/location.jpeg'),
          SizedBox(
            height: 1.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Duration',
                style: GoogleFonts.inter(
                    textStyle: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                )),
              ),
              Text(
                '20 mins',
                style: GoogleFonts.inter(
                    textStyle: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                )),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 1.h),
            child: LinearPercentIndicator(
              width: 70.w,
              lineHeight: 3.w,
              percent: percentAge = 0.5,
              progressColor: Color(0xFFFE8668),
              backgroundColor: Color(0xFFC4C4C4),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Any problem?',
                style: GoogleFonts.inter(textStyle: kdisheStyle),
              ),
              Text(
                'Please check the link so that we ',
                style: GoogleFonts.inter(textStyle: kdisheStyle),
              ),
              Text(
                'can help you ',
                style: GoogleFonts.inter(textStyle: kdisheStyle),
              ),
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          Text(
            'HELP',
            style: GoogleFonts.inter(
                textStyle: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    color: Color(0xff4285F4))),
          ),
          SizedBox(height: 1.h,),
          Padding(
            padding: EdgeInsets.only(right: 3.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Order more!',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,
                          color: Color(0xff3a3a3a))),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}


