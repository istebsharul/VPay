import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SignUpStatefulWidget2 extends StatefulWidget {
  const SignUpStatefulWidget2({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUpStatefulWidget2> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _registerUser() async {
    print("registerUser");
    String username = _usernameController.text;
    String password = _passwordController.text;

    Uri url = Uri.parse('http://localhost:5000/register');

    Map<String, String> data = {
      'username': username,
      'password': password,
    };

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode(data),
      );

      print(response.statusCode);
      if (response.statusCode == 200) {
        // Registration success
        // Handle the response as needed
        print('Registration successful');
      } else {
        // Registration error
        // Handle the error or show appropriate message
        print('Registration failed');
      }
    } catch (e) {
      // Exception/Error
      // Handle the exception or show appropriate message
      print('Error: $e');
    }
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
