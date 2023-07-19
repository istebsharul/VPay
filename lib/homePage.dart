import 'package:flutter/material.dart';
// import 'package:vpay/voiceActivate.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: const MaterialColor(
          0xFFEABC17,
          <int, Color>{
            50: Color(0xFFEABC17),
            100: Color(0xFFEABC17),
            200: Color(0xFFEABC17),
            300: Color(0xFFEABC17),
            400: Color(0xFFEABC17),
            500: Color(0xFFEABC17),
            600: Color(0xFFEABC17),
            700: Color(0xFFEABC17),
            800: Color(0xFFEABC17),
            900: Color(0xFFEABC17),
          },
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu), // Hamburger menu icon
            onPressed: () {
              // Handle menu button press
            },
          ),
          title: Row(
            children: const [
              Text(
                'V',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32, // Change the color of the "V" text here
                ),
              ),
              Text(
                ' Pay',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32, // Change the color of the "Pay" text here
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
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
                  Column(
                    children: [
                      // CARD SLIDER
                      SizedBox(
                        height: 250,
                        child: PageView(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 25),
                              child: Container(
                                width: 310,
                                height: 198,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image:
                                        AssetImage("assets/images/img_1.png"),
                                    fit: BoxFit.contain,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  shadows: const [
                                    BoxShadow(
                                      color: Color(0xFFEBBC17),
                                      blurRadius: 7,
                                      offset: Offset(2, 2),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 25),
                              child: Container(
                                width: 318,
                                height: 198,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://via.placeholder.com/318x198"),
                                    fit: BoxFit.cover,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  shadows: const [
                                    BoxShadow(
                                      color: Color(0xFFEBBC17),
                                      blurRadius: 8,
                                      offset: Offset(2, 2),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 25),
                              child: Container(
                                width: 318,
                                height: 198,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://via.placeholder.com/318x198"),
                                    fit: BoxFit.cover,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  shadows: const [
                                    BoxShadow(
                                      color: Color(0xFFEBBC17),
                                      blurRadius: 8,
                                      offset: Offset(2, 2),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            // Add more cards here
                          ],
                        ),
                      ),
                      // SLIDER BULLETS
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFEABC17),
                            ),
                          ),
                          const SizedBox(width: 6),
                          Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          ),
                          // Add more bullets for additional cards
                        ],
                      ),
                    ],
                  ),

                  // RECENT TRANSACTION
                  const Positioned(
                    left: 44,
                    top: 280,
                    child: SizedBox(
                      width: 165,
                      height: 32,
                      child: Text(
                        'Recent Transaction',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Alata',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    left: 44,
                    top: 310,
                    child: SizedBox(
                      width: 302,
                      height: 54,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 54,
                              height: 54,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFD9D9D9),
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 62,
                            top: 0,
                            child: Container(
                              width: 54,
                              height: 54,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFD9D9D9),
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 124,
                            top: 0,
                            child: Container(
                              width: 54,
                              height: 54,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFD9D9D9),
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 186,
                            top: 0,
                            child: Container(
                              width: 54,
                              height: 54,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFD9D9D9),
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 248,
                            top: 0,
                            child: Container(
                              width: 54,
                              height: 54,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFD9D9D9),
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // const SizedBox(height: 25),

                  // CATEGORIES
                  const Positioned(
                    left: 44,
                    top: 380,
                    child: SizedBox(
                      width: 165,
                      height: 32,
                      child: Text(
                        'Categories',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Alata',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    left: 43,
                    top: 410,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text('Alert'),
                                      content: const Text(
                                          'This Feature will be available soon!'),
                                      actions: [
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                // Add your button click logic here
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                primary: Colors.transparent,
                              ),
                              child: SizedBox(
                                width: 58,
                                height: 87,
                                child: Stack(
                                  children: [
                                    //Button Shape
                                    Container(
                                      width: 58,
                                      height: 58,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFEABC17),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      child: Transform.scale(
                                        scale:
                                            0.7, // Adjust the scale factor according to your desired size
                                        child: Image.asset(
                                          'assets/images/contact.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),

                                    //Button Title
                                    const Positioned(
                                      left: 6,
                                      top: 63,
                                      child: SizedBox(
                                        width: 47,
                                        height: 24,
                                        child: Text(
                                          'Pay \nContacts',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontFamily: 'Alata',
                                            fontWeight: FontWeight.w400,
                                            height: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 15),
                            ElevatedButton(
                              onPressed: () {
                                // Add your button click logic here
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                primary: Colors.transparent,
                              ),
                              child: SizedBox(
                                width: 58,
                                height: 87,
                                child: Stack(
                                  children: [
                                    //Button Shape
                                    Container(
                                      width: 58,
                                      height: 58,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFEABC17),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      child: Transform.scale(
                                        scale:
                                            0.8, // Adjust the scale factor according to your desired size
                                        child: Image.asset(
                                          'assets/images/electricity-bill.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),

                                    //Button Title
                                    const Positioned(
                                      left: 6,
                                      top: 63,
                                      child: SizedBox(
                                        width: 47,
                                        height: 24,
                                        child: Text(
                                          'Electricity',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontFamily: 'Alata',
                                            fontWeight: FontWeight.w400,
                                            height: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 15),
                            ElevatedButton(
                              onPressed: () {
                                // Add your button click logic here
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                primary: Colors.transparent,
                              ),
                              child: SizedBox(
                                width: 58,
                                height: 87,
                                child: Stack(
                                  children: [
                                    //Button Shape
                                    Container(
                                      width: 58,
                                      height: 58,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFEABC17),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      child: Transform.scale(
                                        scale:
                                            0.6, // Adjust the scale factor according to your desired size
                                        child: Image.asset(
                                          'assets/images/broadband.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    //Button Title
                                    const Positioned(
                                      left: 6,
                                      top: 63,
                                      child: SizedBox(
                                        width: 47,
                                        height: 24,
                                        child: Text(
                                          'Broadband',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontFamily: 'Alata',
                                            fontWeight: FontWeight.w400,
                                            height: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 15),
                            ElevatedButton(
                              onPressed: () {
                                // Add your button click logic here
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                primary: Colors.transparent,
                              ),
                              child: SizedBox(
                                width: 58,
                                height: 87,
                                child: Stack(
                                  children: [
                                    //Button Shape
                                    Container(
                                      width: 58,
                                      height: 58,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFEABC17),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      child: Transform.scale(
                                        scale:
                                            0.7, // Adjust the scale factor according to your desired size
                                        child: Image.asset(
                                          'assets/images/smartphone-call.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    //Button Title
                                    const Positioned(
                                      left: 6,
                                      top: 63,
                                      child: SizedBox(
                                        width: 47,
                                        height: 24,
                                        child: Text(
                                          'Mobile \n Recharge',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontFamily: 'Alata',
                                            fontWeight: FontWeight.w400,
                                            height: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // MAIN BUTTON

                  Positioned(
                    left: 45,
                    top: 510,
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Add your onPressed logic here
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            primary: const Color(0xFFEABC17),
                          ),
                          child: SizedBox(
                            width: 135.42,
                            height: 135.42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 135.42,
                                    height: 123.53,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 23,
                                  top: 25,
                                  child: Container(
                                    width: 90,
                                    height: 90,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    child: Transform.scale(
                                      scale:
                                          0.9, // Adjust the scale factor according to your desired size
                                      child: Image.asset(
                                        'assets/images/balance.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 30),
                        ElevatedButton(
                          onPressed: () {
                            // Add your onPressed logic here
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            primary: const Color(0xFFEABC17),
                          ),
                          child: SizedBox(
                            width: 135.42,
                            height: 135.42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 135.42,
                                    height: 123.53,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 23,
                                  top: 25,
                                  child: Container(
                                    width: 90,
                                    height: 90,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFEABC17),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    child: Transform.scale(
                                      scale:
                                          0.9, // Adjust the scale factor according to your desired size
                                      child: Image.asset(
                                        'assets/images/scan.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Main Button Title
                  Positioned(
                    left: 65,
                    top: 660,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 100,
                          height: 15,
                          decoration: ShapeDecoration(
                            color: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Check Balance',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Alata',
                                fontWeight: FontWeight.w400,
                                height: 1,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 65),
                        Container(
                          width: 100,
                          height: 15,
                          decoration: ShapeDecoration(
                            color: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Scan QR',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Alata',
                                fontWeight: FontWeight.w400,
                                height: 1,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Positioned(
                    left: 50,
                    top: 700,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => VoicePaymentPage(),
                        //   ),
                        // );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        primary: Colors.transparent,
                      ),
                      child: SizedBox(
                        width: 400,
                        height: 80,
                        child: Stack(
                          children: [
                            //Button Shape
                            Container(
                              width: 300,
                              height: 70,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFEABC17),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Transform.scale(
                                scale:
                                    0.7, // Adjust the scale factor according to your desired size
                                child: Image.asset(
                                  'assets/images/smartphone-call.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            //Button Title
                            const Positioned(
                              left: 6,
                              top: 63,
                              child: SizedBox(
                                width: 47,
                                height: 24,
                                child: Text(
                                  'Mobile \n Recharge',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Alata',
                                    fontWeight: FontWeight.w400,
                                    height: 1,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
