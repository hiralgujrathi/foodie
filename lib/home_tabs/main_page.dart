import 'package:flutter/material.dart';
import 'package:foodie/home_tabs/home_page.dart';
import 'package:foodie/home_tabs/location.dart';
import 'package:foodie/home_tabs/order_page.dart';
import 'package:foodie/home_tabs/profile_page.dart';
import 'package:foodie/home_tabs/search_page.dart';
import 'package:sizer/sizer.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: SafeArea(
          child: Scaffold(
            bottomNavigationBar: options(),
            body: TabBarView(
              children: [
                HomePage(),
                LocationPage(),
                SearchPage(),
                OrderPage(),
                ProfilePage(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget options() {
    return Container(
      child: TabBar(
        labelColor: Color(0xff000000),
        unselectedLabelColor: Color(0xffc4c4c4),
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.symmetric(horizontal: 2.w),
        indicatorColor: Color(0xff000000),
        tabs: [
          Tab(
            icon: Icon(
              Icons.home,
              size: 8.w,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.location_on_outlined,
              size: 8.w,
            ),
          ),
          Tab(
            icon: CircleAvatar(
              backgroundColor: Color(0xff000000),
              radius: 5.w,
              child: const Center(
                  child: Icon(
                Icons.search_sharp,
                size: 28,
                color: Colors.white,
              )),
            ),
          ),
          Tab(
            icon: Icon(
              Icons.assignment,
              size: 8.w,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.person,
              size: 8.w,
            ),
          ),
        ],
      ),
    );
  }
}
