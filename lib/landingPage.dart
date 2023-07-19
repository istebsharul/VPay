import 'dart:math';

import 'package:flutter/material.dart';

import 'login.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(widget.title),
        backgroundColor: const Color(0xFFEABC17),
        elevation: 0.0,
      ),
      body: Container(
        width: 393,
        height: 768,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: const Color(0xFF121212),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 27.41,
              top: -254,
              child: Transform(
                transform: Matrix4.identity()
                  ..translate(0.0, 0.0)
                  ..rotateZ(0.35),
                child: Container(
                    width: 520,
                    height: 610,
                    decoration: const ShapeDecoration(
                      color: Color(0xFFEABC17),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(101),
                        ),
                      ),
                    ),
                    child: Transform.rotate(
                      angle: -15 * (pi / 180), // Convert -15 degrees to radians
                      child: Image.asset(
                        'assets/images/logoy.png', // Replace with your image path
                        fit: BoxFit
                            .contain, // Adjust the fit according to your needs
                        width: 20, // Set the desired width
                        height: 20, // Set the desired height
                      ),
                    )),
              ),
            ),
            const Positioned(
              left: 90,
              top: 500,
              child: SizedBox(
                width: 230,
                height: 90,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Hi Welcome to\n',
                        style: TextStyle(
                          color: Color(0xFFEABC17),
                          fontSize: 30,
                          fontFamily: 'Alata',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: 'V-Pay',
                        style: TextStyle(
                          color: Color(0xFFEABC17),
                          fontSize: 40,
                          fontFamily: 'Alatsi',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const Positioned(
              left: 60,
              top: 600,
              child: SizedBox(
                width: 282,
                height: 106,
                child: Text(
                  'Revolutionize payments with the power of your voice. Say it, pay it. Effortless, secure, and convenient transactions.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Assistant',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 91,
              top: 690,
              child: Container(
                width: 208,
                height: 44,
                decoration: ShapeDecoration(
                  color: const Color(0xFFEABC17),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                    // Button click logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFEABC17),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'Let’s Start',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Alata',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
