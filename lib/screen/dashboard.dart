import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testingapp/screen/welcome_view.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => DashboardtState();
}

class DashboardtState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: const Color.fromARGB(255, 101, 27, 219),
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 10.0, right: 10.0),
              child: Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 80.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "Welcome, ",
                        style: GoogleFonts.poppins(
                          fontSize: 25,
                          color: const Color.fromARGB(255, 255, 255, 255),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyWelcomeView()));
                    },
                    child: Container(
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
                    ),
                  ),
                ],
              )),
            ),
          ),
          Container(
            height: 250,
            color: Colors.red,
          ),
          Container(
            height: 250,
            color: Colors.yellow,
          ),
          Container(
            height: 250,
            color: Colors.green,
          ),
          Container(
            height: 250,
            color: Colors.white,
          ),
          Container(
            height: 250,
            color: Colors.blue,
          ),
        ],
      ),
      // body: Container(
      //     width: double.infinity,
      //     height: double.infinity,
      //     child: Padding(
      //       padding: const EdgeInsets.only(
      //         top: 50.0,
      //         left: 20.0,
      //         right: 20.0,
      //       ),
      //       child: Column(
      //         children: [
      //           Container(
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      // Row(
      //   children: [
      //     Text(
      //       "Welcome, ",
      //       style: GoogleFonts.poppins(
      //         fontSize: 25,
      //         color: const Color.fromARGB(255, 255, 255, 255),
      //       ),
      //     ),
      //     Text(
      //       "Dreams ",
      //       style: GoogleFonts.poppins(
      //           fontSize: 25,
      //           fontWeight: FontWeight.bold,
      //           color: Theme.of(context).primaryColor),
      //     ),
      //   ],
      // ),
      // GestureDetector(
      //   onTap: () {
      //     Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //             builder: (context) => MyWelcomeView()));
      //   },
      //   child: Container(
      //     width: 45,
      //     height: 45,
      //     decoration: BoxDecoration(
      //       // color: Colors.white,
      //       borderRadius: BorderRadius.circular(50),
      //       border: Border.all(
      //         width: 3,
      //         color: Theme.of(context).primaryColor,
      //       ),

      //       image: DecorationImage(
      //         image: AssetImage("assets/images/logo2.png"),
      //         fit: BoxFit.cover,
      //       ),
      //     ),
      //   ),
      // )
      //               ],
      //             ),
      //           ),
      //           Row(
      //             children: [
      //               Row(
      //                 children: [
      //                   Text(
      //                     "HEADER ",
      //                     style: GoogleFonts.poppins(
      //                       fontSize: 25,
      //                       color: Theme.of(context).primaryColor,
      //                     ),
      //                   ),
      //                   Text(
      //                     "INFORMATION",
      //                     style: GoogleFonts.poppins(
      //                       fontSize: 25,
      //                       color: Colors.white,
      //                     ),
      //                   )
      //                 ],
      //               ),
      //             ],
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.only(top: 8.0),
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceAround,
      //               children: [
      //                 Text(
      //                   "News",
      //                   style: GoogleFonts.poppins(
      //                     fontSize: 15,
      //                     color: Colors.white,
      //                   ),
      //                 ),
      //                 Text(
      //                   "Trending",
      //                   style: GoogleFonts.poppins(
      //                     fontSize: 15,
      //                     color: Colors.white,
      //                   ),
      //                 ),
      //                 Text(
      //                   "Features",
      //                   style: GoogleFonts.poppins(
      //                     fontSize: 15,
      //                     color: Colors.white,
      //                   ),
      //                 ),
      //                 Text(
      //                   "Schedule",
      //                   style: GoogleFonts.poppins(
      //                     fontSize: 15,
      //                     color: Colors.white,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //           Container(
      //               width: double.infinity,
      //               height: 200,
      //               child: ListView.builder(
      //                 scrollDirection: Axis.horizontal,
      //                 itemBuilder: (BuildContext context, index) {
      //                   return Padding(
      //                     padding: const EdgeInsets.symmetric(horizontal: 10.0),
      //                     child: Column(
      //                       children: [
      //                         SizedBox(
      //                           height: 20.0,
      //                         ),
      //                         Image.asset(
      //                           "images/pattslogo.png",
      //                         ),
      //                         SizedBox(
      //                           height: 20.0,
      //                         ),
      //                         Image.asset(
      //                           "images/pattslogo.png",
      //                         ),
      //                         SizedBox(
      //                           height: 20.0,
      //                         ),
      //                         Image.asset(
      //                           "images/pattslogo.png",
      //                         ),
      //                         SizedBox(
      //                           height: 20.0,
      //                         ),
      //                         Image.asset(
      //                           "images/pattslogo.png",
      //                         ),
      //                         SizedBox(
      //                           height: 20.0,
      //                         ),
      //                         Image.asset(
      //                           "images/pattslogo.png",
      //                         ),
      //                         SizedBox(
      //                           height: 20.0,
      //                         ),
      //                         Image.asset(
      //                           "images/pattslogo.png",
      //                         ),
      //                         SizedBox(
      //                           height: 20.0,
      //                         ),
      //                         Image.asset(
      //                           "images/pattslogo.png",
      //                         ),
      //                       ],
      //                     ),
      //                   );
      //                 },
      //               ))
      //         ],
      //       ),
      //     )),
    );
  }
}
