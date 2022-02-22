import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home_tabs/iteminfo.dart';
import 'package:google_fonts/google_fonts.dart';
import 'customclass.dart';

var kTitleTextStyle = TextStyle(
    fontSize: 36.sp, color: Color(0xffB65F49), fontWeight: FontWeight.w400);
var kTitleImage = Image.asset(
  'images/food.png',
  height: 7.h,
  width: 12.w,
  color: Colors.black,
);
var kGeneralTextStyle = TextStyle(
    fontWeight: FontWeight.w400, fontSize: 18.sp, color: Colors.black);
var kPageTitleStyle = TextStyle(
    fontWeight: FontWeight.w800, fontSize: 15.sp, color: Colors.black);
var kGeneralinfoStyle = TextStyle(
    fontWeight: FontWeight.w900, fontSize: 12.sp, color: Colors.black);
var kPageTitleTextStyle = TextStyle(
    fontWeight: FontWeight.w700, fontSize: 19.sp, color: Colors.black);
var kProfilePageTextStyle = TextStyle(
    fontWeight: FontWeight.w800, fontSize: 12.5.sp, color: Colors.black);
var kTextFieldPasswordDecoration = InputDecoration(
  suffixIcon:
      SizedBox(child: Image.asset('images/eye.png'), height: 3.h, width: 5.w),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xffCBCBD4), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xff000000), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
);
var kTextFieldDecoration = InputDecoration(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xffCBCBD4), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xff000000), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
);
var kRegistrationStyle = TextStyle(
    fontWeight: FontWeight.w600, fontSize: 15.sp, color: Color(0xff3a3a3a));
var kcuisineStyle = TextStyle(
  color: Color(0xFF3a3a3a),
  fontSize: 12.sp,
  fontWeight: FontWeight.w400,
);
var kdisheStyle = TextStyle(
  color: Color(0xFF3a3a3a),
  fontSize: 14.sp,
  fontWeight: FontWeight.w400,
);
var kHomePageStyle = TextStyle(
    fontWeight: FontWeight.w600, fontSize: 14.sp, color: Color(0xff000000));
var kSearchDecoration = InputDecoration(
  prefixIcon: Padding(
    padding: const EdgeInsets.all(12.0),
    child: SvgPicture.asset('images/search.svg'),
  ),
  suffixIcon: Padding(
      padding: const EdgeInsets.all(13.0),
      child: SvgPicture.asset('images/cancel.svg')),
  contentPadding: EdgeInsets.symmetric(vertical: 2.0),
  filled: true,
  fillColor: Color(0xffffffff),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xffCBCBD4), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xff000000), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
);

class FilterList extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const FilterList({required this.eventList, required this.imageList});

  final List<String> eventList;
  final List<Image> imageList;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: eventList.length,
            itemBuilder: (context, index) {
              return EventInfo(eventList[index], imageList[index]);
            }));
  }
}

class Brands extends StatelessWidget {
  Brands({required this.brands});
  final String brands;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 12.w,
          backgroundColor: Color(0xff3a3a3a),
          child: Center(
            child: Text(
              brands,
              style: GoogleFonts.inter(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13.sp,
                      color: Color(0xffffffff))),
            ),
          ),
        ),
        SizedBox(width: 3.w),
      ],
    );
  }
}

Padding divider() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
    child: Divider(
      color: Color(0xffcbcbd4),
    ),
  );
}

class Profile extends StatelessWidget {
  Profile({required this.info, required this.icon});
  final String info;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            info,
            style: GoogleFonts.lato(textStyle: kProfilePageTextStyle),
          ),
          icon
        ],
      ),
    );
  }
}

class Order extends StatelessWidget {
  Order({required this.dish, required this.amt});
  final String dish;
  final String amt;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Row(
        children: [
          Row(children: [
            Icon(
              Icons.check,
              color: Color(0xff686B6F),
            ),
            Text(
              dish,
              style: GoogleFonts.inter(textStyle: kdisheStyle),
            )
          ]),
          Spacer(),
          Text(
            amt,
            style: GoogleFonts.inter(textStyle: kcuisineStyle),
          ),
        ],
      ),
    );
  }
}

class Payment extends StatelessWidget {
  Payment({required this.info, required this.amtinfo});
  final String info;
  final String amtinfo;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Row(
        children: [
          Text(
            info,
            style: GoogleFonts.inter(textStyle: kProfilePageTextStyle),
          ),
          Spacer(),
          Text(
            amtinfo,
            style: GoogleFonts.inter(
                textStyle: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff3a3a3a))),
          ),
        ],
      ),
    );
  }
}

ClipPath buildClipPath(String title) {
  return ClipPath(
    child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: Text(
              title,
              style: GoogleFonts.inter(textStyle: kPageTitleTextStyle),
            ),
          ),
        ],
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
  );
}
