import 'package:citycart/Page/OnboardingScreen.dart';
import 'package:citycart/Page/loginpage.dart';
import 'package:flutter/material.dart';

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body:
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg1.png'), // Path to your background image
            fit: BoxFit.cover,
          ),
          // gradient: LinearGradient(
          //   colors: [
          //     Color(0x80ECB34),
          //     Color(0x801A4514)
          //   ], // RGBA colors in ARGB format
          //   stops: [0.0, 1.0], // Gradient stops
          //   begin: Alignment.topCenter, // Gradient starts from the top
          //   end: Alignment.bottomCenter, // Gradient ends at the bottom
          // ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween, // Push content up
            children: [
              // Circle with logo and padding
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80.0, right: 210.0),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.transparent,
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage('assets/images/logo.png'), // Correct way to load an image
                      ),
                    ),
                  ),
                ],
              ),

              // Text below the circle
              Padding(
                padding: const EdgeInsets.only(
                  right: 10.0,
                  top: 5,
                  left: 8
                ),
                child: Text(
                  'Delivering Food, Groceries, and Medicine ',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 115.0, top: 5, left: 4),
                child: Text(
                  'All in One App!',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                  textAlign: TextAlign.left,
                ),
              ),
              // Additional text
              Padding(
                padding: const EdgeInsets.only(right: 10.0, top: 5, left: 8),
                child: Text(
                  'Key insights from notification Best Offers and Coupons, curated just for you',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 20),
              // Get Started button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OnboardingScreen()),
                  );
                },
                child: Text('Get Started',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: Size(330, 50), // Rectangular size
                  padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15), // Padding inside the button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ), // Rounded corners
                ),
              ),
              SizedBox(height: 8),
              // Login button with gradient
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF40AB32), Color(0xFF1A4514)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(330, 50), // Rectangular size
                    padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15), // Padding inside the button
                    backgroundColor: Colors
                        .transparent, // Makes the button background transparent
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ), // Rounded corners
                    shadowColor: Colors.transparent, // Removes shadow
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              // Spacer to push the content upwards
              Spacer(),
              // Add your bottom image or content here
              // Image.asset('assets/your_image.png'), // Example for adding an image
              //   // Bottom image
              Image.asset(
                'assets/images/multifood.png',
                fit: BoxFit.cover,
                height: 188, // Adjust as needed
                width: 430, // Full width
              ),
            ],
          ),
        ),
      ),
    );
  }
}

