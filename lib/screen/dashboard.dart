import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:testingapp/screen/my_courses.dart';
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
      home: const SchoolDashboard(),
    );
  }
}

final List<String> imagePaths = [
  "assets/images/image2.png",
  "assets/images/image2.png",
  "assets/images/image2.png",
];

class SchoolDashboard extends StatefulWidget {
  const SchoolDashboard({super.key});

  @override
  State<SchoolDashboard> createState() => _SchoolDashboardState();
}

class _SchoolDashboardState extends State<SchoolDashboard> {
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
                    MaterialPageRoute(builder: (context) => SchoolDashboard()));
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'WELCOME TO PATTS COLLEGE OF AERONAUTICS!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 15, 148),
                ),
              ),
            ),
            CarouselSlider(items: [
              Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/image2.png'), // Use AssetImage
                    fit: BoxFit.cover,
                  ),
                  color: Colors.black, // This will be a color overlay
                ),
              )
            ], options: CarouselOptions()),
            const SizedBox(height: 24),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: [
                ClickableDashboardCard(
                  icon: Icons.people,
                  title: 'Students',
                  value: '250',
                  color: Colors.blue,
                  onTap: () {},
                ),
                ClickableDashboardCard(
                  icon: Icons.school,
                  title: 'Teachers',
                  value: '30',
                  color: Colors.green,
                  onTap: () {},
                ),
                ClickableDashboardCard(
                  icon: Icons.book,
                  title: 'About Us',
                  value: '10',
                  color: Colors.orange,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyCourses()));
                  },
                ),
                ClickableDashboardCard(
                  icon: Icons.event,
                  title: 'Events',
                  value: '5',
                  color: Colors.purple,
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'Recent Activities',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                return const ActivityTile(
                  title: 'New Assignment Posted',
                  subtitle: 'Math 101',
                );
              },
            ),
            const SizedBox(height: 24),
            const Text(
              'Upcoming Events',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const ModernEventTile(
                    title: 'School Fair',
                    date: '2024-03-15',
                  );
                },
              ),
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
