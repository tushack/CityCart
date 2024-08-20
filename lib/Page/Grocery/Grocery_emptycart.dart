import 'package:citycart/Page/Food/Food_Bottom_navbar.dart';
import 'package:citycart/Page/Food/HomeScreen.dart';
import 'package:citycart/Page/Grocery/Grocery_Bottom_Navbar.dart';
import 'package:citycart/Page/Grocery/Grocery_HomePage.dart';
import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const Emptycart());
// }

class Emptycart extends StatelessWidget {
  const Emptycart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/hmm.png',
                width: 300, // Adjust the width as needed
                height: 250, // Adjust the height as needed
              ),
              const SizedBox(height: 20), // Space between image and card
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GroceryHomepage()), // Navigate to HomePage
                  );
                },
                child: Card(
                  color: const Color(0xFF40AB32), // Card color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SizedBox(
                    width: 200,
                    height: 50,
                    child: Center(
                      child: Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

        ),
        bottomNavigationBar: const GroceryBottomNavbar(),
      ),
    );
  }
}
