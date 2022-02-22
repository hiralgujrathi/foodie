import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:foodie/customclass.dart';
import 'package:foodie/constants.dart';
import 'package:google_fonts/google_fonts.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> itemList = [
    "Pizzas",
    "Biryani",
    "Burgurs",
    "Ice-creams",
    "Chinese"
  ];
  List<Image> imageList = [
    Image(image: AssetImage('images/pizza.png')),
    Image(image: AssetImage('images/biryani.png')),
    Image(image: AssetImage('images/burger.png')),
    Image(image: AssetImage('images/ice_creams.png')),
    Image(image: AssetImage('images/chinese.png')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 6.w, vertical: 6.h),
                  child: TextField(
                    decoration: kSearchDecoration,
                  ),
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
            SizedBox(height: 1.h),
            SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height),
                child: Text(
                  'Get Free Delivery On Your First Order',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff3a3a3a))),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Container(
              child: Column(
                children: [
                  Image(image: AssetImage('images/food_image.png')),
                  Container(
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                        color: Color(0xff3a3a3a),
                        borderRadius:
                        BorderRadius.all(Radius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'View all top restaurants',
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffffffff))),
                        ),
                        CircleAvatar(
                          radius: 4.w,
                          backgroundColor: Color(0xffffffff),
                          child: Center(
                              child: Icon(
                                Icons.keyboard_arrow_right_sharp,
                                color: Color(0xff3a3a3a),
                              )),
                        )
                      ],
                    ),
                    height: 6.h,
                    width: 69.w,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  color: Color(0xff3a3a3a),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
            SizedBox(height: 2.h),
            Text('Popular cuisines around you ',
                style: GoogleFonts.inter(textStyle: kHomePageStyle)),
            SizedBox(height: 1.h),
            Container(
                height: 23.h,
                child: FilterList(
                  eventList: itemList,
                  imageList: imageList,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5.w),
                  child: Text('Top Brands',
                      style:
                      GoogleFonts.inter(textStyle: kHomePageStyle)),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.w,horizontal: 3.w),
              child: Row(
                children: [
                  Brands(
                    brands: 'Subway',
                  ),
                  Brands(brands: 'Pizza Hut'),
                  Brands(brands: "Domino's")
                ],
              ),
            ),
            SizedBox(height:1.h),
            Container(
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                  color: Color(0xff3a3a3a),
                  borderRadius:
                  BorderRadius.all(Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'View more',
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffffffff))),
                  ),
                  SizedBox(width:4.w),
                  CircleAvatar(
                    radius: 4.w,
                    backgroundColor: Color(0xffffffff),
                    child: Center(
                        child: Icon(
                          Icons.keyboard_arrow_right_sharp,
                          color: Color(0xff3a3a3a),
                        )),
                  )
                ],
              ),
              height: 7.h,
              width: 69.w,
            ),
          ],
        ),
      ),
    );
  }
}

