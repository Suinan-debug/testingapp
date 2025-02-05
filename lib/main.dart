import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testingapp/screen/home_view.dart';
import 'package:testingapp/screen/welcome_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
      home: HomeView(),
      // home: MyWelcomeView(),
    );
    }
}
