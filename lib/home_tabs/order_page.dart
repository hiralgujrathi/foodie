import 'package:flutter/material.dart';
import 'package:foodie/home_tabs/main_page.dart';
import 'package:sizer/sizer.dart';
import 'package:foodie/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            buildClipPath("Your Orders"),
            SizedBox(
              height: 7.h,
            ),
            SvgPicture.asset('images/face.svg'),
            SizedBox(
              height: 3.h,
            ),
            Text(
              'You have no orders',
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 19.sp,
                      color: Color(0xff3a3a3a))),
            ),
            SizedBox(height: 4.h),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainPage()));
              },
              child: Container(
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                    color: Color(0xff3a3a3a),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Create an order',
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffffffff))),
                    ),
                    SizedBox(width: 2.w),
                    Icon(
                      Icons.add,
                      color: Color(0xffffffff),
                    )
                  ],
                ),
                height: 7.h,
                width: 69.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
