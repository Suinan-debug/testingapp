import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => DashboardtState();
}

class DashboardtState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 50.0,
              left: 20.0,
              right: 20.0,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Welcome, ",
                          style: GoogleFonts.poppins(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Dreams ",
                          style: GoogleFonts.poppins(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor),
                        ),
                      ],
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          width: 3,
                          color: Theme.of(context).primaryColor,
                        ),

                        image: DecorationImage(
                          image: AssetImage("assets/images/logo2.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
