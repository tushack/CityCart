import 'package:citycart/Page/Food/Food_Bottom_navbar.dart';
import 'package:citycart/Page/Medicine/Medicine_Bottom_Navbar.dart';
import 'package:citycart/Page/trackorder.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(OrderSummary());
// }

class OrderSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
        SingleChildScrollView(
          child: Stack(
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
                child: Padding(
                  padding: const EdgeInsets.only(top: 70,bottom: 100), // Adjust padding to make space for the card
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Order Confirmed!",
                        style: TextStyle(
                          fontSize: 30,
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
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(right: 230.0),
                        child: Text(
                          "Order Summary",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black, // You can change the color as needed
                          ),
                        ),
                      ),
                      SizedBox(height: 2),
                      SizedBox(
                        width: 360, // Set the width of the card
                        height: 270,
                        child: Card(
                          color: Colors.transparent, // Transparent card background
                          elevation: 2, // Adds a shadow effect
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                              color: Color(0xFF1A4514).withOpacity(0.3), // Border color with 30% opacity
                              width: 1,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0), // Padding inside the card
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Order No.',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Order343',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 4),
                                Divider(color: Colors.black.withOpacity(0.2)), // Divider with slight opacity
                                SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Order No.',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Order343',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(color: Colors.black.withOpacity(0.2)), // Divider with slight opacity
                                SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Order No.',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Order343',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(color: Colors.black.withOpacity(0.2)), // Divider with slight opacity
                                SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Order No.',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Order343',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(color: Colors.black.withOpacity(0.2)), // Divider with slight opacity
                                SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Order No.',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Order343',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(right: 250.0),
                        child: Text(
                          "Order Details",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black, // You can change the color as needed
                          ),
                        ),
                      ),
                      SizedBox(height: 2),
                      SizedBox(
                        width: 360, // Set the width of the card
                        height: 170,
                        child: Card(
                          color: Colors.transparent, // Transparent card background
                          elevation: 2, // Adds a shadow effect
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                              color: Color(0xFF1A4514).withOpacity(0.5), // Border color with 50% opacity
                              width: 1,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0), // Padding inside the card
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Items Ordered',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Order343',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 4),
                                Divider(color: Colors.black.withOpacity(0.2)), // Divider with slight opacity
                                SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 242.0),
                                      child: Text(
                                        'Order343',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(color: Colors.black.withOpacity(0.2)), // Divider with slight opacity
                                SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 242.0),
                                      child: Text(
                                        'Order343',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Payment Info
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(right: 200.0),
                        child: Text(
                          "Payment Information",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black, // You can change the color as needed
                          ),
                        ),
                      ),
                      SizedBox(height: 2),
                      SizedBox(
                        width: 360, // Set the width of the card
                        height: 65,
                        child: Card(
                          color: Colors.transparent, // Transparent card background
                          elevation: 2, // Adds a shadow effect
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                              color: Color(0xFF1A4514).withOpacity(0.5), // Border color with 50% opacity
                              width: 1,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(14.0), // Padding inside the card
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Payment Method',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Visa Card',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // Track Order Button
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Column(
                            children: [
                              Text(
                                'Track your order live',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                width: 200, // Set the width of the button
                                height: 30,  // Set the height of the button
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Color(0xFF40AB32), Color(0xFF1A4514)],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => TrackOrder()), // Replace with your tracking page widget
                                    );
                                  },
                                  child: Center(
                                    child: Text(
                                      'Track Order',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    padding: EdgeInsets.zero,
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
              ),
            ],
          ),
        ),
        bottomNavigationBar: const MedicineBottomNavbar(),

      ),
    );
  }
}
