import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:foodie/customclass.dart';
import 'package:foodie/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<String> dishes = <String>['Burger', "Momo's"];
  TextEditingController dishController = TextEditingController();
  void addItemToList() {
    setState(() {
      dishes.insert(0, dishController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        ClipPath(
          child: Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
              child: TextField(
                controller: dishController,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      child: SvgPicture.asset('images/search.svg'),
                      onTap: () {
                        addItemToList();
                      },
                    ),
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
                    borderSide:
                        BorderSide(color: Color(0xffCBCBD4), width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xff000000), width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
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
        Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: dishes.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${dishes[index]} ',
                              style:
                                  GoogleFonts.roboto(textStyle: kcuisineStyle),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 4.w,
                              color: Color(0xff3a3a3a),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 2.h, horizontal: 5.w),
                        child: Divider(
                          color: Color(0xffcbcbd4),
                        ),
                      ),
                    ],
                  );
                }))
      ],
    ));
  }
}
