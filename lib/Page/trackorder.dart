import 'package:flutter/material.dart';

// void main() {
//   runApp(const TrackOrder());
// }

class TrackOrder extends StatelessWidget {
  const TrackOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 375,
                height: 812,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF9F9F9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Stack(
                  children: [
                    // Top Bar
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 375,
                        height: 52,
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.4),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 17,
                                  height: 17,
                                  child: const FlutterLogo(),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  width: 17,
                                  height: 17,
                                  child: const FlutterLogo(),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  width: 8,
                                  height: 15,
                                  child: const FlutterLogo(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Background Map Image
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 390,
                        height: 349,
                        decoration: ShapeDecoration(
                          image: const DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/390x349"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),

                    // Order Tracking Details
                    Positioned(
                      left: 0,
                      top: 290,
                      child: Container(
                        width: 375,
                        height: 470,
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.78),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(70),
                              topRight: Radius.circular(70),
                            ),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 26.96,
                              top: 25.42,
                              child: const Text(
                                'Arrives in 10-15 min',
                                style: TextStyle(
                                  color: Color(0xFF1A4514),
                                  fontSize: 19.96,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 57,
                              top: 124,
                              child: const Text(
                                'Order Received',
                                style: TextStyle(
                                  color: Color(0xFF1A4514),
                                  fontSize: 12.54,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 57,
                              top: 177,
                              child: const Text(
                                'Preparing Your Order',
                                style: TextStyle(
                                  color: Color(0xFF1A4514),
                                  fontSize: 12.54,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 57,
                              top: 229,
                              child: const Text(
                                'Delivery Partner is picking up Order',
                                style: TextStyle(
                                  color: Color(0xFF1A4514),
                                  fontSize: 12.54,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 57,
                              top: 281,
                              child: Text(
                                'Order Delivered',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 12.54,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            // Small Card View below "Order Received"
                            Positioned(
                              left: 37.5, // Center horizontally
                              top: 400,   // Position below "Order Received"
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  width: 300,
                                  height: 60, // Adjust height as needed
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Color(0xFF2F7924), Color(0xFF1A4514)],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      // User Image
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: CircleAvatar(
                                          child: Image.asset(
                                            'assets/images/delivery.png', // Replace with your background image path
                                            fit: BoxFit.cover, // Ensures the image covers the entire background
                                          ),                                          radius: 25,
                                        ),
                                      ),
                                      // User Name and Contact Text
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            const Text(
                                              'Vlad S.', // Replace with dynamic user name
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            const Text(
                                              'Contact Delivery',
                                              style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // My Icon
                                      Padding(
                                        padding: const EdgeInsets.only(right: 18.0),
                                        child: Image.asset(
                                          'assets/icons/message.png',
                                          color: Colors.white,
                                          width: 34,
                                          height: 34,
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),



                            Positioned(
                              left: 26.96,
                              top: 53.41,
                              child: const Text(
                                'Preparing your order',
                                style: TextStyle(
                                  color: Color(0xFF1C1B1F),
                                  fontSize: 27.94,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 46,
                              top: 105,
                              child: Container(
                                width: 3,
                                height: 268,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment(0.00, -1.00),
                                    end: Alignment(0, 1),
                                    colors: [Color(0xFF40AB31), Color(0xFFFEFEFE)],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 42,
                              top: 128,
                              child: Container(
                                width: 11,
                                height: 11,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF4EB140),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 42,
                              top: 180,
                              child: Container(
                                width: 11,
                                height: 11,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF4EB140),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 42,
                              top: 233,
                              child: Container(
                                width: 11,
                                height: 11,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF4EB140),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 42,
                              top: 285,
                              child: Container(
                                width: 11,
                                height: 11,
                                decoration: ShapeDecoration(
                                  color: Colors.white.withOpacity(0.78),
                                  shape: const OvalBorder(
                                    side: BorderSide(
                                      width: 1,
                                      color: Color(0xFF4EB140),
                                    ),
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
            ],
          ),
        ),
      ),
    );
  }
}
