import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:foodie/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckoutOrder extends StatefulWidget {
  @override
  _CheckoutOrderState createState() => _CheckoutOrderState();
}

class _CheckoutOrderState extends State<CheckoutOrder> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffffffff),
        leading: Icon(
          Icons.arrow_back_sharp,
          color: Color(0xff3a3a3a),
        ),
        centerTitle: true,
        title: Text(
          'Checkout',
          style: GoogleFonts.inter(textStyle: kProfilePageTextStyle),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5.h,
            ),
            Payment(info: 'PAYMENT METHOD', amtinfo: 'EDIT'),
            divider(),
            Payment(info: 'CASH', amtinfo: '420rs'),
            divider(),
            Payment(info: 'ADDRESS', amtinfo: 'EDIT'),
            Padding(
              padding: EdgeInsets.only(left: 5.w, top: 2.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mini',
                      style:
                          GoogleFonts.inter(textStyle: kProfilePageTextStyle),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      'Baner,',
                      style: GoogleFonts.inter(textStyle: kcuisineStyle),
                    ),
                    Text(
                      'Pune-411007',
                      style: GoogleFonts.inter(textStyle: kcuisineStyle),
                    )
                  ]),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        hintText: 'Promo code',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffCBCBD4), width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Container(
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                        color: Color(0xffFE8668),
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Center(
                      child: Text(
                        'Apply',
                        style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black)),
                      ),
                    ),
                    height: 8.h,
                    width: 20.w,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
              child: Row(
                children: [
                  Text(
                    'DELIVERY',
                    style: GoogleFonts.inter(textStyle: kProfilePageTextStyle),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: GoogleFonts.inter(textStyle: kcuisineStyle),
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      SvgPicture.asset('images/enquiry.svg')
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
              child: Row(
                children: [
                  Text(
                    'TOTAL',
                    style: GoogleFonts.inter(textStyle: kProfilePageTextStyle),
                  ),
                  Spacer(),
                  Text(
                    '420rs',
                    style: GoogleFonts.inter(textStyle: kProfilePageTextStyle),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 2.h),
              child: Container(
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                    color: Color(0xff3a3a3a),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Text(
                    'Confirm order',
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
    ));
  }
}
