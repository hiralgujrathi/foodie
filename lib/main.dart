import 'package:flutter/material.dart';
import 'package:foodie/home_tabs/adding_stuff.dart';
import 'package:foodie/home_tabs/checkout_order.dart';
import 'package:foodie/home_tabs/order_placed.dart';
import 'package:foodie/home_tabs/place_order.dart';
import 'package:sizer/sizer.dart';
import 'registration_screens/login.dart';
import 'registration_screens/welcome_page.dart';
import 'registration_screens/signup.dart';
import 'registration_screens/forgot_password.dart';
import 'registration_screens/password_changed.dart';
import 'home_tabs/main_page.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        // ignore: prefer_const_constructors
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute:  '/HomePage',
          // ignore: prefer_const_literals_to_create_immutables
          routes: {
        '/WelcomePage': (context) => WelcomePage(),
            '/LoginPage': (context) => LoginPage(),
            '/SignUpPage': (context) => SignUpPage(),
            '/ForgotPasswordPage': (context) => ForgotPassword(),
            '/PasswordChangedPage': (context) =>PasswordChanged(),
            '/HomePage' : (context) => MainPage(),
            '/AddingStuff' : (context) => AddingStuff(),
            '/PlaceOrder' : (context) => PlaceOrder(),
            '/CheckoutOrder' : (context) => CheckoutOrder(),
            '/OrderPlaced' : (context) => OrderPlaced()
            },
        );
      },
    );
  }
}