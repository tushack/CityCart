import 'package:citycart/Page/Food/Food_Bottom_navbar.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

class Orderconfirmed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
        Stack(
          children: [
            // Background Image
            Positioned.fill(
              child: Image.asset(
                'assets/images/sucessbg2.jpg', // Replace with your background image path
                fit: BoxFit.cover, // Ensures the image covers the entire background
              ),
            ),
            // Content
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Order Confirmed!",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.green, // You can change the color as needed
                    ),
                  ),
                  SizedBox(height: 10),
                  Image.asset(
                    'assets/images/ordert.png', // Replace with your image path
                    height: 100, // Adjust the height as needed
                    width: 200,  // Adjust the width as needed
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Thank you for your order!",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54, // You can change the color as needed
                    ),
                  ),
                  Text(
                    "Your delicious food is on its way.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54, // You can change the color as needed
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar:  BottomNavigation(),
      ),
    );
  }
}
