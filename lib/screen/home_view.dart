import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testingapp/screen/welcome_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft, // Start from the top
          end: Alignment.bottomRight, // End at the bottom
          colors: [
            Color.fromARGB(
                255, 230, 246, 255), // Example top color (light yellow-green)

            Color.fromARGB(255, 209, 234, 255),
            Color.fromARGB(
                255, 255, 255, 255), // Example bottom color (light blue)
            // Add more colors for a more complex gradient
          ],
        ),
      ),
      //  margin: EdgeInsets.all(24),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 80.0,
          ),
          Image.asset("assets/images/logo2.png"),

          _header(context),
          Container(
            height: 480,
            width: 325,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
          ),
          _inputField(context),
          // _forgetPassword(context),
          _signUp(context),
        ],
      ),
    )));
  }

  _header(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 200.0),
      child: Column(
        children: [
          Text('Account Registration',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          Text('Enter your credential to Register'),
        ],
      ),
    );
  }

  _inputField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 0.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "First Name",
                      labelStyle: TextStyle(
                        color: const Color.fromARGB(255, 37, 37, 37),
                      ),
                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(5),
                      //   borderSide: BorderSide.none,
                      // ),
                      // fillColor: Colors.white.withOpacity(0.8),
                      // filled: true,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Last Name",
                      labelStyle: TextStyle(
                        color: const Color.fromARGB(255, 37, 37, 37),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: "Username",
              labelStyle: TextStyle(
                color: const Color.fromARGB(255, 37, 37, 37),
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10),
                child: FaIcon(
                  FontAwesomeIcons.user,
                  size: 20.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            obscureText: _obscureText,
            decoration: InputDecoration(
              labelText: "Password",
              labelStyle: TextStyle(
                color: const Color.fromARGB(255, 37, 37, 37),
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10),
                child: FaIcon(
                  FontAwesomeIcons.key,
                  size: 20.0,
                  color: Colors.black,
                ),
              ),
              suffixIcon: IconButton(
                icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ),
            ),
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.bottomLeft,
            child: _forgetPassword(context),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color:
                      const Color.fromARGB(255, 122, 122, 122).withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeView()));
              },
              child: Text(
                "Register",
                style: TextStyle(
                    fontSize: 20,
                    color: const Color.fromARGB(
                        255, 15, 49, 36)), // White text for contrast
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(
                    255, 10, 243, 169), // Example: Blue background
                shape: StadiumBorder(),
                padding: EdgeInsets.symmetric(
                    vertical: 16, horizontal: 30), // Adjust padding
                textStyle:
                    TextStyle(fontWeight: FontWeight.bold), // Make text bolder
              ),
            ),
          ),
        ],
      ),
    );
  }

  _forgetPassword(context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          "Forget password?",
          style: TextStyle(color: const Color.fromARGB(255, 255, 73, 73)),
        ));
  }

  _signUp(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an Account? ",
          style: TextStyle(color: const Color.fromARGB(255, 12, 12, 12)),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "Login",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 151, 88),
              ),
            ))
      ],
    );
  }
}
