import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:foodie/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderPlaced extends StatefulWidget {
  @override
  _OrderPlacedState createState() => _OrderPlacedState();
}

class _OrderPlacedState extends State<OrderPlaced> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildClipPath(""),
            Text(
              'Order Placed!',
              style: GoogleFonts.inter(
                  textStyle: TextStyle(
                      fontSize: 35.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff3a3a3a))),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 7.h),
              child: Container(
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                    color: Color(0xff3a3a3a),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Text(
                    'Track your order',
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffffffff))),
                  ),
                ),
                height: 7.h,
                width: 75.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
