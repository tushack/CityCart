
import 'dart:ui';
import 'package:citycart/Page/Food/Emptycart.dart';
import 'package:citycart/Page/Grocery/Grocery_HomePage.dart';
import 'package:citycart/Page/Food/HomeScreen.dart';
import 'package:citycart/Page/Medicine/MedicinePage.dart';
import 'package:citycart/Page/OnboardingScreen.dart';

import 'package:flutter/material.dart';

// Add imports for new pages if necessary


class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => Foodpage()),
      // );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Emptycart1()),
        );
        break;
      case 2:
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => Wallet()),
        // );
        break;
      case 3:
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => ProfileScreen()),
      // );
        break;
    }
  }

  void _onPopupMenuSelected(String value) {
    switch (value) {
      case 'Food':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Foodpage()),
        );
        break;
      case 'Medicine':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Medicinepage()),
        );
        break;
      case 'Grocery':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GroceryHomepage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 54.0, sigmaY: 54.0), // Blur effect
        child: BottomNavigationBar(
          backgroundColor: Colors.white.withOpacity(0.3), // Translucent white for glassmorphism
          items: <BottomNavigationBarItem>[
            _buildBottomNavigationBarItem('assets/icons/homeicon.png', 0),
            _buildBottomNavigationBarItem('assets/icons/shopping.png', 1),
            _buildBottomNavigationBarItem('assets/icons/walet.png', 2),
            _buildBottomNavigationBarItemCustom(context, 3),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.white,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          elevation: 0, // Remove the shadow/elevation
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(String iconPath, int index) {
    return BottomNavigationBarItem(
      icon: Column(
        children: [
          if (_selectedIndex == index)
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Container(
                height: 6.0, // Increase the height slightly to make it touch the header
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xFF1A4514), // Green divider line
                  borderRadius: BorderRadius.circular(4.0), // Border radius of 4
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0), // Add top padding to the icons
            child: Image.asset(
              iconPath,
              color: _selectedIndex == index ? Colors.black : Colors.black,
            ),
          ),
        ],
      ),
      label: '',
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItemCustom(BuildContext context, int index) {
    return BottomNavigationBarItem(
      icon: _buildRectangleButton(context, index),
      label: '',
    );
  }

  Widget _buildRectangleButton(BuildContext context, int index) {
    return Transform(
      transform: Matrix4.translationValues(1.0, 10.0, 0.0), // Adjust position
      child: GestureDetector(
        onTap: () => _onItemTapped(index),
        child: Container(
          width: 110,
          height: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: _selectedIndex == index ? Color(0xFF1A4514) : Color(0xFF1A4514),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: PopupMenuButton<String>(
                    onSelected: _onPopupMenuSelected,
                    itemBuilder: (BuildContext context) {
                      return [
                        PopupMenuItem<String>(
                          value: 'Food',
                          child: Text('Food'),
                        ),
                        PopupMenuItem<String>(
                          value: 'Medicine',
                          child: Text('Medicine'),
                        ),
                        PopupMenuItem<String>(
                          value: 'Grocery',
                          child: Text('Grocery'),
                        ),
                      ];
                    },
                    child: Text(
                      'Food',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Transform(
                  transform: Matrix4.identity()
                    ..translate(-6.0, 10.0, 0.0) // Adjust position
                    ..rotateZ(-0.8),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 26,
                  ),
                ),
              ),
              // if (_selectedIndex == index)
              //   Positioned(
              //     top: 0,
              //     left: 0,
              //     right: 0,
              //     child: Container(
              //       height: 3.0,
              //       decoration: BoxDecoration(
              //         color: Color(0xFF1A4514), // Green divider line
              //         borderRadius: BorderRadius.circular(4), // Border radius of 4
              //       ),
              //     ),
              //   ),
            ],
          ),
        ),
      ),
    );
  }
}
