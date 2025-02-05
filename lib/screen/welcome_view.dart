import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testingapp/screen/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Title',
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
    "Beginner Level",
    "Intermediate  Level",
    "Professional  Level"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/image1.jpg"),
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
                child: Text(
                  "Project ",
                  style: GoogleFonts.bebasNeue(
                    fontSize: 32,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Text(
                    "Data",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 32,
                      color: Theme.of(context).primaryColor,
                      letterSpacing: 2,
                    ),
                  )),
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About Us",
                    style: GoogleFonts.poppins(
                      fontSize: 40,
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
                      height: 226,
                      width: MediaQuery.of(context).size.width,
                      color: const Color.fromARGB(0, 255, 136, 0),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: levels.length,
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
                                  image: AssetImage("images/image1.jpg"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                    const Color.fromARGB(255, 27, 92, 128)
                                        .withOpacity(
                                            0.8), // Opacity value (0.0 to 1.0)
                                    BlendMode
                                        .srcATop, // Blend mode (see explanation below)
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, top: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Projects for",
                                        style: GoogleFonts.poppins(
                                          fontSize: 25,
                                          color: Theme.of(context).primaryColor,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(levels[index],
                                        style: GoogleFonts.poppins(
                                          fontSize: 13,
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
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
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 40.0, top: 40.0, bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Get's Started",
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
