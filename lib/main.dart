import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cart_page.dart';
import 'package:flutter_application_1/pages/homepage.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/route.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: Mytheme.lightTheme(context),
      debugShowCheckedModeBanner: false, //removes the debug label
      initialRoute: MyRoute.homeRoute,
      routes: {
        "/": (context) => Loginpage(),
        MyRoute.homeRoute: (context) => homepage(),
        MyRoute.loginRoute: (context) => const Loginpage(),
        MyRoute.cartRoute: (context) => const CartPage(),
      },
    );
  }
}
