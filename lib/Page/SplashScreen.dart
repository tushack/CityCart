import 'package:citycart/Page/startedScreen.dart';
import 'package:flutter/material.dart';
import 'dart:async';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      // Navigator.pushReplacementNamed(context, '/login');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Splash2()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // Keep this to ensure the gradient works
      body:
      Stack( // Use Stack to layer the gradient and content
        children: [
          Container( // Container for the gradient
            decoration: BoxDecoration(
              // image: DecorationImage(
              //   image: AssetImage('assets/images/splashbg1.png'), // Path to your background image
              //   fit: BoxFit.cover,
              // ),
              gradient: LinearGradient(
                colors: [
                  Color(0xFFECBF34),
                  Color(0xFFFFFFFF), // Dark green color
                ], // RGBA colors in ARGB format
                stops: [0,40], // Gradient stops
                begin: Alignment.topCenter, // Gradient starts from the top
                end: Alignment.bottomCenter, // Gradient ends at the bottom
              ),
            ),
          ),
          Center( // Center the Column within the Stack
            child: Column(
              // Remove mainAxisAlignment: MainAxisAlignment.spaceAround
              children: [
                // Top image
                Positioned(
                  // padding: const EdgeInsets.only(top:0),
                  child: Image.asset(
                    'assets/images/splasbg1.png',
                    height: 300,
                    fit: BoxFit.cover, // Cover the full width
                    width: double.infinity,
                  ),
                ),

                // Centered logo
                Padding(
                  padding: const EdgeInsets.only(bottom: 10), // Adjust bottom padding
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 140,
                    width: 140,
                  ),
                ),

                SizedBox(height: 10,),
                // Progress bar
                Padding(
                  padding: const EdgeInsets.only(bottom: 20), // Adjust bottom padding
                  child: SizedBox(
                    height: 13, // Adjust the height as desired
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70), // Adjust horizontal padding as needed
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(90)), // Apply a 90 radius to all corners
                          color: const Color.fromARGB(255, 169, 208, 66), // Set background color here instead of LinearProgressIndicator
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(90)),
                          child: LinearProgressIndicator(
                            value: null, // Use null for an indeterminate progress bar
                            backgroundColor: Colors.transparent, // Set to transparent as background color is handled by DecoratedBox
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 20), // Adjust bottom padding
                  child: Text(
                    'Store App', // Replace with your app name
                    style: TextStyle(
                      fontFamily: 'Roboto', // Use Roboto font family
                      fontSize: 20, // Set font size
                      fontWeight: FontWeight.w400, // Set font weight
                      height: 1.25, // Set line height
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}