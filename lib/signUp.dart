import 'package:flutter/material.dart';

import 'homePage.dart';

class SignUpStatefulWidget extends StatefulWidget {
  const SignUpStatefulWidget({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUpStatefulWidget> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _registerUser() {
    // Register user logic
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Perform registration logic here
    // Example: Make API calls, validate input, etc.

    // Print the username and password for demonstration
    print('Username: $username');
    print('Password: $password');

    // Navigate to the home page after registration
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          width: 393,
          height: 768,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80, bottom: 120),
                child: SizedBox(
                  child: Image.asset(
                    'assets/images/logob.png',
                    fit: BoxFit.contain,
                    width: 150,
                    height: 150,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1),
                child: TextField(
                  controller: _usernameController,
                  style: const TextStyle(fontSize: 18),
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Enter Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1),
                child: TextField(
                  controller: _passwordController,
                  style: const TextStyle(fontSize: 18),
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Enter Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _registerUser,
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  minimumSize: const Size(150, 30),
                  backgroundColor: const Color(0xFFEABC17),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Alata',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
