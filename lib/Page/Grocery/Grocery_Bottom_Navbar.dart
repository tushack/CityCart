// import 'package:citycart/Page/Emptycart.dart';
// import 'package:citycart/Page/WalletPage.dart';
// import 'package:citycart/Page/profile.dart';
// import 'package:citycart/Page/trackorder.dart';
// import 'package:flutter/material.dart';
//
// class BottomNavigation extends StatelessWidget {
//   const BottomNavigation({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       items: <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//           icon: Image.asset('assets/icons/homeicon.png'),
//           label: '', // Empty label for no text
//         ),
//         BottomNavigationBarItem(
//           icon: Image.asset('assets/icons/shopping.png'), // Path to your custom icon
//           label: '', // Empty label for no text
//         ),
//         BottomNavigationBarItem(
//           icon: Image.asset('assets/icons/walet.png'),
//           label: '', // Empty label for no text
//         ),
//         BottomNavigationBarItem(
//           icon: _buildRectangleButton(context), // Custom rectangle button
//           label: '', // Empty label for no text
//         ),
//       ],
//       currentIndex: 0, // Set the current index to the profile tab
//       selectedItemColor: Colors.green,
//       unselectedItemColor: Colors.grey,
//       onTap: (index) {
//         switch (index) {
//           case 0:
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => HomePage()), // Navigate to HomePage
//             );
//             break;
//           case 1:
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => Emptycart()), // Navigate to ShoppingPage
//             );
//             break;
//           case 2:
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => Wallet()), // Navigate to WalletPage
//             );
//             break;
//           case 3:
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => ProfileScreen()), // Navigate to YourTargetScreen
//             );
//             break;
//         }
//       },
//     );
//   }
//
//   Widget _buildIcon(IconData icon) {
//     return Transform.translate(
//       offset: const Offset(0, 9), // Adjust the vertical position (positive moves down)
//       child: Icon(
//         icon,
//         size: 30, // Increase the size of the icon
//       ),
//     );
//   }
//
//   Widget _buildRectangleButton(BuildContext context) {
//     return Transform(
//       transform: Matrix4.translationValues(1.0, 10.0, 0.0), // Adjust vertical and horizontal position
//       child: GestureDetector(
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => TrackOrder()), // Navigate to YourTargetScreen
//           );
//         },
//         child: Container(
//           width: 110, // Adjust width as needed
//           height: 40, // Adjust height as needed
//           alignment: Alignment.center,
//           decoration: BoxDecoration(
//             color: Color(0xFF1A4514), // Updated background color
//             borderRadius: BorderRadius.circular(8), // Rounded corners
//           ),
//           child: Stack(
//             children: [
//               Align(
//                 alignment: Alignment.centerLeft, // Align text to the left
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 16.0), // Padding from left edge
//                   child: Text(
//                     'Food',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.centerRight, // Align the arrow icon
//                 child: Transform(
//                   transform: Matrix4.identity()
//                     ..translate(-6.0, 10.0)
//                     ..rotateZ(-0.8), // Tilt the arrow icon to the northeast
//                   child: Icon(
//                     Icons.arrow_forward, // Arrow icon
//                     color: Colors.white,
//                     size: 26, // Adjust icon size as needed
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Home Page')),
//       body: Center(child: Text('This is the Home Page.')),
//     );
//   }
// }
//
// class ShoppingPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Shopping Page')),
//       body: Center(child: Text('This is the Shopping Page.')),
//     );
//   }
// }
//
// class WalletPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Wallet Page')),
//       body: Center(child: Text('This is the Wallet Page.')),
//     );
//   }
// }
//
// class YourTargetScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Target Screen')),
//       body: Center(child: Text('This is the target screen.')),
//     );
//   }
// }


import 'dart:ui';

import 'package:citycart/Page/Food/HomeScreen.dart';
import 'package:citycart/Page/Grocery/Grocery_HomePage.dart';
import 'package:citycart/Page/Grocery/Grocery_emptycart.dart';
import 'package:citycart/Page/Grocery/Grocery_wallet.dart';
import 'package:citycart/Page/Medicine/MedicinePage.dart';
import 'package:citycart/Page/OnboardingScreen.dart';
import 'package:citycart/Page/trackorder.dart';
import 'package:flutter/material.dart';

// Add imports for new pages if necessary


class GroceryBottomNavbar extends StatefulWidget {
  const GroceryBottomNavbar({super.key});

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<GroceryBottomNavbar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => GroceryHomepage()),
      );
        break;
      case 1:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Emptycart()),
      );
        break;
      case 2:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Wallet()),
      );
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
      transform: Matrix4.translationValues(4.0, 10.0, 0.0), // Adjust position
      child: GestureDetector(
        onTap: () => _onItemTapped(index),
        child: Container(
          width: 110, // Width of the green box
          height: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: _selectedIndex == index ? Color(0xFF1A4514) : Color(0xFF1A4514),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left:10), // Horizontal padding inside the container
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center, // Center align items inside the row
              children: [
                Expanded(
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
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Grocery',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 4,), // Gap between text and icon
                        Transform(
                          transform: Matrix4.identity()
                            ..translate(-4.0, 8.0, 0.0) // Adjust position
                            ..rotateZ(-0.8),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 20,
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
      ),
    );
  }

}
