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
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        primaryColor: const Color.fromARGB(255, 255, 240, 34),
        secondaryHeaderColor: Color.fromRGBO(0, 19, 173, 1),
        scaffoldBackgroundColor: Color.fromRGBO(0, 19, 173, 1),
      ),

      // home: HomeView(),
      home: MyWelcomeView(),
    );
  }
}
