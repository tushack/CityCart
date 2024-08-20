import 'package:citycart/Page/Grocery/Grocery_HomePage.dart';
import 'package:citycart/Page/Food/HomeScreen.dart';
import 'package:citycart/Page/Medicine/MedicinePage.dart';

import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg2.png'), // Path to your background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 180), // Spacing from the top
                Container(
                  width: double.infinity,
                  height: 500, // Adjust the height as needed
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 75,
                        left: 8,
                        child: _buildCategoryCard(
                          context: context,
                          imagePath: 'assets/images/food.png',
                          color: Colors.orange,
                          bottom: 0, // Example positioning
                          left: 70,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Foodpage(),
                              ),
                            );
                          },
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 2,
                        child: Column(
                          children: <Widget>[
                            _buildCategoryCard(
                              context: context,
                              imagePath: 'assets/images/medicine.png',
                              color: Colors.yellow,
                              bottom: 1, // Example positioning
                              left: 10,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Medicinepage(),
                                  ),
                                );
                              },
                            ),
                            SizedBox(height: 10),
                            _buildCategoryCard(
                              context: context,
                              imagePath: 'assets/images/gocery.png',
                              color: Colors.green,
                              bottom: 160, // Example positioning
                              left: 10,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => GroceryHomepage(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 150,
            left: 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "What's On Your",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                SizedBox(height: 10), // Spacing between lines
                Row(
                  children: [
                    Baseline(
                      baseline: 12.0, // Set to match the font size of "Mind"
                      baselineType: TextBaseline.alphabetic,
                      child: Text(
                        "Mind",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    SizedBox(width: 8), // Adjust spacing if needed
                    Transform(
                      transform: Matrix4.rotationZ(0.1), // Slight rotation for falling effect
                      alignment: Alignment.center,
                      child: Baseline(
                        baseline: 36.0, // Set to match the font size of "Mind"
                        baselineType: TextBaseline.alphabetic,
                        child: Text(
                          "?",
                          style: TextStyle(
                            fontSize: 56, // Slightly larger size for the question mark
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic, // Italicize the "?"
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryCard({
    required BuildContext context,
    required String imagePath,
    required Color color,
    required double bottom,
    required double left,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(16),
                bottom: Radius.circular(16),
              ),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: 150,
                height: 200,
              ),
            ),
            Positioned(
              bottom: bottom, // Positioning the text at the bottom of the card
              left: left,   // Positioning the text from the left
              child: Container(
                color: Colors.transparent, // Background color for text for better readability
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

