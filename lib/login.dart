import 'package:flutter/material.dart';
import 'package:vpay/signup2.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // title: Text(widget.title),
          backgroundColor: Colors.black,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          reverse: true,
          child: Container(
            width: 393,
            height: 767.2,
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
                  padding: const EdgeInsets.only(top: 80, bottom: 170),
                  child: SizedBox(
                    child: Image.asset(
                      'assets/images/logob.png', // Replace with your image path
                      fit: BoxFit
                          .contain, // Adjust the fit according to your needs
                      width: 150, // Set the desired width
                      height: 150, // Set the desired height
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.1),
                  child: const TextField(
                    style: TextStyle(fontSize: 18),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Enter your Email/Phone',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35.0, vertical: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't Have an Account?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Alata',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const SignUpStatefulWidget2(),
                            ),
                          );
                          // Button click logic
                        },
                        child: const Text(
                          'SignUp',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize:
                                18, // Increase the font size of the button text
                            fontFamily: 'Alata',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // PasswordInput
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.1),
                  child: const TextField(
                    style: TextStyle(fontSize: 18),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Enter Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Login Button
                ElevatedButton(
                  onPressed: () {
                    // Button click logic
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10), // Add padding to the button
                    minimumSize:
                        const Size(150, 30), // Increase the size of the button
                    backgroundColor: const Color(0xFFEABC17),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24, // Increase the font size of the button text
                      fontFamily: 'Alata',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
