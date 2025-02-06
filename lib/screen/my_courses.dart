import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:testingapp/screen/signup.dart';
import 'package:testingapp/screen/welcome_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PATTS COLLEGE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyCourses(),
    );
  }
}

final List<String> imagePaths = [
  "assets/images/image2.png",
  "assets/images/image2.png",
  "assets/images/image2.png",
];

class MyCourses extends StatefulWidget {
  const MyCourses({super.key});

  @override
  State<MyCourses> createState() => _MyCourses();
}

class _MyCourses extends State<MyCourses> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        title: Padding(
          // Use Padding for consistent spacing
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            children: [
              Text(
                "PATTS ",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "COLLEGE",
                style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 15, 148),
                image: DecorationImage(
                  image: AssetImage('assets/images/image2.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeView()));
              },
              leading: const Icon(Icons.home),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                print("Settings Tapped");
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyWelcomeView()));
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 226,
              width: double.infinity,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage("images/m_v.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                          height: 350,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/jan.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: const Center(
                            child: Text("asdasmpe",
                                style: TextStyle(color: Colors.white)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Column(
                      children: [
                        Container(
                          height: 300,
                          color: Colors.white,
                          child: Column(
                            // Use a Column
                            children: [
                              Text(
                                "To become the Center of Excellence in Aviation Education",
                                style: TextStyle(
                                    color: const Color.fromARGB(255, 8, 0, 119),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "In order to attain this vision, PATTS College has strengthened its faculty thru its competency-based training, including research and development programs, streamlined its curricula to be responsive and relevant to the needs of the industry and has painstakingly invested in a new campus that would offer the best in facilities. ",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                          height: 350,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/feb.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: const Center(
                            child: Text("asdasmpe",
                                style: TextStyle(color: Colors.white)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Column(
                      children: [
                        Container(
                          height: 300,
                          color: Colors.white,
                          child: Column(
                            // Use a Column
                            children: [
                              Text(
                                "To provide quality Aviation Education and to assist our graduates in the labor market",
                                style: TextStyle(
                                    color: const Color.fromARGB(255, 8, 0, 119),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "In order to achieve its mission, PATTS College employs experienced instructors and practitioners from the industry to intensify its academe-industry linkages, and broaden its On-the-Job Training and Placement Program. ",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 300,
                        color: const Color.fromARGB(255, 0, 11, 167),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "INSTITUTIONAL OBJECTIVES",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "PATTS College aims not only to provide the students with knowledge and skills necessary for the pursuit of a career, but also to convert them into truly well-rounded and cultured individuals. In pursuit of this, PATTS has come up with the following objectives:",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "1.  To provide the most complete professional and technical training in all phases of modern aviation.\n\n 2. To nurture students to become proficient, morally responsible and effective communicators in all aspects of learning. \n\n3. To meet the domestic and international manpower demands in the multi-modal transport, and hospitality management industries.\n\n 4. To develop individuals who are always ready to share their abilities, resources, trainings and learnings in the service of the community and development of the country.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            // const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 900,
                        color: Theme.of(context).primaryColor,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CORE VALUES",
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 0, 11, 167),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "PATTS College of Aeronautics will always remain steadfast in its institutional core values:",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 11, 167),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "P – PATRIOTISM",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 0, 11, 167),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Patriotism is love and devotion to one’s country. For us PATTSeans, this love and devotion motivate us to constantly improve ourselves to become globally competitive. This is our way of helping our nation by sharing our capabilities and resources.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 11, 167),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "A – ADEPTNESS",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 0, 11, 167),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "We try our best to be proficient and skilled in our assigned tasks. Being adept means making the most of what we know, in the best way we can. We continuously strive for excellence in performing our duties and responsibilities, whether the tasks are great or small.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 11, 167),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "T – TRUST",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 0, 11, 167),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Trust is imperative to all PATTSeans – A breach of trust can leave a permanent scar. The main determinant of trust is reliability and PATTSeans are persons who can be relied on with certainty. We are all aware that a standard exists in PATTS for what is obligatory and what is right.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 11, 167),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "T – THOROUGHNESS",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 0, 11, 167),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Thoroughness in all we do’ is not just a slogan, but a first-line core value for every PATTSean. It serves as a reminder of the College's other four core values. It sets the standard for doing what must be done using the most exhaustive means, and completing tasks with the greatest care and attention.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 11, 167),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "S – SERVICE-ORIENTEDNESS",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 0, 11, 167),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Service is the act of giving oneself for the welfare of others. We believe that the word 'service' is synonymous with stewardship. We see ourselves as stewards, entrusted with the responsibility of serving the college with integrity and commitment. It means remaining resilient while performing our duties, even in difficult situations.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 11, 167),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          color: Colors.white,
                          child: Column(
                            // Use a Column
                            children: [
                              Text(
                                "CONTACT US",
                                style: TextStyle(
                                    color: const Color.fromARGB(255, 8, 0, 119),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Text(
                                  "Lombos Avenue, San Isidro, Parañaque City 1700 \n Tel: (02) 8825-8823 | (02) 8825-8824",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10),
                                ),
                              ),
                              Text(
                                "Copyright © 2022 PATTS College of Aeronautics, Inc. All rights reserved.",
                                style:
                                    TextStyle(color: Colors.black, fontSize: 8),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/PATTS2.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      // bottomNavigationBar: ,
    );
  }
}

class ImagePlaceholder extends StatelessWidget {
  final String? imagePath;
  const ImagePlaceholder({super.key, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Image.asset("images/image2.png", fit: BoxFit.cover);
  }
}

class ClickableDashboardCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final Color color;
  final VoidCallback onTap;

  const ClickableDashboardCard({
    required this.icon,
    required this.title,
    required this.value,
    required this.color,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 32, color: color),
              const SizedBox(height: 8),
              Text(title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blueGrey)),
              Text(value,
                  style: const TextStyle(fontSize: 24, color: Colors.blueGrey)),
            ],
          ),
        ),
      ),
    );
  }
}

class ActivityTile extends StatelessWidget {
  final String title;
  final String subtitle;

  const ActivityTile({required this.title, required this.subtitle, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.notifications, color: Colors.blueGrey),
      title: Text(title, style: const TextStyle(color: Colors.blueGrey)),
      subtitle: Text(subtitle, style: const TextStyle(color: Colors.grey)),
    );
  }
}

class ModernEventTile extends StatelessWidget {
  final String title;
  final String date;

  const ModernEventTile({required this.title, required this.date, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 2, 95))),
            Text(date, style: const TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
