import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:foodie/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaceOrder extends StatefulWidget {
  @override
  _PlaceOrderState createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          buildClipPath("Your Orders"),
          SizedBox(
            height: 4.h,
          ),
          Order(dish: 'Momos ×1', amt: '100rs'),
          divider(),
          Order(dish: 'Biryani ×1', amt: '200rs'),
          divider(),
          Order(
            dish: 'Fries ×1',
            amt: '120rs',
          ),
          SizedBox(
            height: 6.h,
          ),
          Container(
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
                color: Color(0xff3a3a3a),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Center(
              child: Text(
                'Place order',
                style: GoogleFonts.inter(
                    textStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffffffff))),
              ),
            ),
            height: 7.h,
            width: 69.w,
          ),
          SizedBox(
            height: 4.h,
          ),
          Container(
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
                color: Color(0xffe5e5e5),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Center(
              child: Text(
                'Save for later',
                style: GoogleFonts.inter(
                    textStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff3a3a3a))),
              ),
            ),
            height: 7.h,
            width: 69.w,
          ),
        ],
      ),
    ));
  }
}
