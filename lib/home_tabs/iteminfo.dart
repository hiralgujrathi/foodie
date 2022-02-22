import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class EventInfo extends StatefulWidget {
  EventInfo(this.info, this.image);
  final String info;
  final Image image;

  @override
  _EventInfoState createState() => _EventInfoState();
}

class _EventInfoState extends State<EventInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.w, right: 1.w, top: 1.w, bottom: 1.w),
      child: GestureDetector(
          onTap: () {},
          child: SingleChildScrollView(
            child: Column(
              children: [
                widget.image,
                SizedBox(height: 1.h),
                Text(
                  widget.info,
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                    color: Color(0xFF3a3a3a),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  )),
                ),
              ],
            ),
          )),
    );
  }
}
