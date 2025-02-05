import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testingapp/screen/welcome_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.all(24),
      child: Column(
        children: [
          _header(context),
          _inputField(context),
        ],
      ),
    ));
  }

  _header(context) {
    return Column(
      children: [
        Text('Account Registration',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        Text('Enter your credential to Register'),
      ],
    );
  }

//   _inputField(context) {
//     return Column(
//       children: [
//         TextField(
//           decoration: InputDecoration(
//               hintText: "Username",
//               border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: BorderSide.none),
//               fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
//               filled: true),
//            prefixIcon: FaIcon(
//             FontAwesomeIcons.user,
//             size: 20.0,
//             color: Colors.black,
//           ),
//         ),
//       ],
//     );
//   }
// }

  _inputField(BuildContext context) {
    // Add BuildContext
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Username",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(10),
              child: FaIcon(
                // Use prefixIcon to add the icon
                FontAwesomeIcons.user,
                size: 20.0,
                color: Colors.black,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(10),
              child: FaIcon(
                // Use prefixIcon to add the icon
                FontAwesomeIcons.key,
                size: 20.0,
                color: Colors.black,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "Register",
            style: TextStyle(fontSize: 20),
          ),
        )
      ],
    );
  }
}
