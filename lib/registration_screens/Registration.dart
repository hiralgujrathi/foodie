// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';

class Registration extends StatelessWidget {
  Registration({required this.image, required this.title});

  final AssetImage image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.w,
      height: 7.h,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 0.2.w),
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: image,
          ),
          SizedBox(width: 3.w),
          Text(title, style: GoogleFonts.lato(textStyle: kRegistrationStyle))
        ],
      ),
    );
  }
}
