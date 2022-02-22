import 'package:flutter/material.dart';
import 'package:foodie/home_tabs/main_page.dart';
import 'package:sizer/sizer.dart';
import 'package:foodie/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class AddingStuff extends StatefulWidget {
  @override
  _AddingStuffState createState() => _AddingStuffState();
}

class _AddingStuffState extends State<AddingStuff> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(children: [
      buildClipPath("The Momo's"),
      SizedBox(
        height: 2.h,
      ),
      Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ExpansionTile(
                title: Text('Momos',
                    style: GoogleFonts.inter(textStyle: kdisheStyle)),
                children: [
                  Orders('Paneer momo'),
                  Orders('Tandoori momo'),
                  Orders('Chicken momo'),
                  Orders('Peri Peri momo'),
                ],
              ),
              SizedBox(height: 1.h),
              ExpansionTile(
                title: Text('Fries',
                    style: GoogleFonts.inter(textStyle: kdisheStyle)),
              ),
              SizedBox(height: 1.h),
              ExpansionTile(
                title: Text('Extras',
                    style: GoogleFonts.inter(textStyle: kdisheStyle)),
              ),
              SizedBox(height: 3.h),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainPage()));
                },
                child: Container(
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                      color: Color(0xff3a3a3a),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'View more restaurants',
                        style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffffffff))),
                      ),
                      SizedBox(width: 4.w),
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
              ),
            ],
          ),
        ),
      ),
    ])));
  }
}

class Orders extends StatelessWidget {
  Orders(this.order);
  final String order;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(order, style: GoogleFonts.inter(textStyle: kdisheStyle)),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.add,
              color: Color(0xff3a3a3a),
              size: 7.w,
            ),
            SizedBox(
              width: 2.w,
            ),
            Text(
              '1',
              style: TextStyle(color: Color(0xff3a3a3a), fontSize: 5.w),
            )
          ],
        ));
  }
}
