import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testingapp/screen/signup.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PATTS COLLEGE',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 255, 240, 34),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const MyWelcomeView(),
    );
  }
}

class MyWelcomeView extends StatefulWidget {
  const MyWelcomeView({super.key});

  @override
  State<MyWelcomeView> createState() => _MWelcomeView();
}

class _MWelcomeView extends State<MyWelcomeView> {
  final List levels = [
    "In order to attain this vision, PATTS College has strengthened its faculty thru its competency-based training, including research and development programs, streamlined its curricula to be responsive and relevant to the needs of the industry and has painstakingly invested in a new campus that would offer the best in facilities. ",
    "In order to achieve its mission, PATTS College employs experienced instructors and practitioners from the industry to intensify its academe-industry linkages, and broaden its On-the-Job Training and Placement Program. ",
    "Professional  Level"
  ];

  final List levels2 = ["OUT VISION", "OUR MISSION"];
  final List levels3 = [
    "To become the Center of Excellence in Aviation Education",
    "To provide quality Aviation Education and to assist our graduates in the labor market"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/image3.png"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              const Color.fromARGB(255, 0, 12, 80)
                  .withOpacity(0.5), // Opacity value (0.0 to 1.0)
              BlendMode.srcATop, // Blend mode (see explanation below)
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child:
                    // Text(
                    //   "Project ",
                    //   style: GoogleFonts.bebasNeue(
                    //     fontSize: 32,
                    //     color: Colors.white,
                    //     letterSpacing: 2,
                    //   ),
                    // ),
                    Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/logo1.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                  height: 200,
                  width: 400,
                ),
              ),
              // Padding(
              //     padding: const EdgeInsets.only(top: 50.0),
              //     child: Text(
              //       "Data",
              //       style: GoogleFonts.bebasNeue(
              //         fontSize: 32,
              //         color: Theme.of(context).primaryColor,
              //         letterSpacing: 2,
              //       ),
              //     )),
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Container(
                  //   decoration: const BoxDecoration(
                  //     image: DecorationImage(
                  //       image: AssetImage("images/logo1.png"),
                  //       fit: BoxFit.contain,
                  //     ),
                  //   ),
                  //   height: 200,
                  //   width: 400,
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "WHERE",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "DREAMS ",
                        style: GoogleFonts.poppins(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      Text(
                        "TAKE",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "FLIGHT",
                    style: GoogleFonts.poppins(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "My Flutter project: Building beautiful,\n cross-platform experiences.",
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: Colors.white,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      color: const Color.fromARGB(0, 255, 136, 0),
                      child: Container(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (BuildContext context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                height: 226,
                                width: 295,
                                decoration: BoxDecoration(
                                  // color: const Color.fromARGB(255, 46, 192, 255),
                                  borderRadius: BorderRadius.circular(20.0),
                                  image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/image3.png"),
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                      const Color.fromARGB(255, 255, 255, 255)
                                          .withOpacity(
                                              1), // Opacity value (0.0 to 1.0)
                                      BlendMode
                                          .srcATop, // Blend mode (see explanation below)
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(levels2[index],
                                          style: GoogleFonts.poppins(
                                            fontSize: 30,
                                            color: const Color.fromARGB(
                                                255, 4, 13, 139),
                                            fontWeight: FontWeight.bold,
                                          )),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(levels3[index],
                                          style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            color: const Color.fromARGB(
                                                255, 4, 13, 139),
                                            fontWeight: FontWeight.bold,
                                          )),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(levels[index],
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            color: Colors.black,
                                          )),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 40.0, top: 40.0, bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("",
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              color: const Color.fromARGB(193, 255, 255, 255),
                            )),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeView()));
                          },
                          child: Container(
                            width: 240,
                            height: 39,
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(5)),
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.add,
                                  size: 20.0,
                                  color: Theme.of(context).primaryColor,
                                ),
                                const SizedBox(width: 8.0),
                                Text(
                                  'Create Account', // Your text
                                  style: GoogleFonts.poppins(
                                    // Example using Google Fonts (optional)
                                    color: Colors.black, // Color of the text
                                    fontSize: 16.0, // Size of the text
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
