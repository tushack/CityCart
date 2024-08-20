// import 'package:citycart/Page/Editprofile.dart';
import 'package:citycart/Page/Food/F_editprofile.dart';
import 'package:citycart/Page/Food/Food_Bottom_navbar.dart';
import 'package:citycart/Page/OrderSummary.dart';
import 'package:citycart/Page/otpPage.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),

    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          color: Color.fromRGBO(21, 21, 21, 0.76), // Set the color with opacity
          onPressed: () {
            // Navigate to the next screen when the icon is tapped
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Otppage()),
            );
          },
        ),
      ),
      body:
      Container(
        color: Colors.grey[300],
        child: SingleChildScrollView(

          // Wrap the content in a SingleChildScrollView
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile Card
                Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        // Profile Image
                        Padding(padding: const EdgeInsets.only(top: 8.0),
                          child:  ClipOval(
                            child: Image.asset(
                              'assets/images/myperson.png',
                              height: 100.0,  // Adjust the height as needed
                              width: 100.0,   // Adjust the width as needed
                              fit: BoxFit.cover, // Ensures the image covers the entire area
                            ),
                          ),
                        ),
                        SizedBox(width: 16.0),
                        // User Info
                        Padding(padding: const EdgeInsets.only(bottom: 10.0),
                          child:  Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // User Name
                                Padding(padding: const EdgeInsets.only(left: 2.0,),
                                  child: Text(
                                    'User 101',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                // Edit Profile with Icon
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/edit.png',
                                      height: 24.0, // Adjust the size as needed
                                      width: 24.0, // Adjust the size as needed
                                    ),

                                    GestureDetector(
                                      onTap: () {
                                        // Navigate to the next screen when "Edit Profile" is tapped
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => EditProfileScreen()),
                                        );
                                      },
                                      child: Text(
                                        'Edit Profile',
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 5.0),
                // First Card with Orders, Address Book, and Favorite Orders
                Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // "Your Order" Text
                        Text(
                          'Your Order',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        // Order Row
                        GestureDetector(
                          onTap: () {
                            // Navigate to the next page when the user taps on the Container
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => OrderSummary()), // Replace with your next page widget
                            );
                          },
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Order',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 8.0), // Space between text and icon
                                  Image.asset(
                                    'assets/icons/box.png',
                                    height: 24.0, // Adjust the size as needed
                                    width: 24.0, // Adjust the size as needed
                                  ),
                                ],
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color.fromRGBO(21, 21, 21, 0.36), // Set the color with opacity
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16.0),
                        // Address Book Row
                        Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Address Book',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 8.0), // Space between text and icon
                                Image.asset(
                                  'assets/icons/addr.png',
                                  height: 24.0, // Adjust the size as needed
                                  width: 24.0, // Adjust the size as needed
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromRGBO(21, 21, 21, 0.36), // Set the color with opacity
                            ),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        // Favorite Orders Row
                        Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Favorite Orders',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 8.0), // Space between text and icon
                                Image.asset(
                                  'assets/icons/like.png',
                                  height: 24.0, // Adjust the size as needed
                                  width: 24.0, // Adjust the size as needed
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromRGBO(21, 21, 21, 0.36), // Set the color with opacity
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                // Second Card with Wallet, Payment Settings, and Refer and Earn
                Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // "Money" Text
                        Text(
                          'Money',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        // Wallet Row
                        Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Wallet',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 8.0), // Space between text and icon
                                Image.asset(
                                  'assets/icons/wallet.png',
                                  height: 24.0, // Adjust the size as needed
                                  width: 24.0, // Adjust the size as needed
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromRGBO(21, 21, 21, 0.36), // Set the color with opacity
                            ),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        // Payment Settings Row
                        Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Payment Settings',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 8.0), // Space between text and icon
                                Image.asset(
                                  'assets/icons/rs.png',
                                  height: 24.0, // Adjust the size as needed
                                  width: 24.0, // Adjust the size as needed
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromRGBO(21, 21, 21, 0.36), // Set the color with opacity
                            ),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        // Refer and Earn Row
                        Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Refer and Earn',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 8.0), // Space between text and icon
                                Image.asset(
                                  'assets/icons/rne.png',
                                  height: 24.0, // Adjust the size as needed
                                  width: 24.0, // Adjust the size as needed
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromRGBO(21, 21, 21, 0.36), // Set the color with opacity
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                // Third Card with City Card Gold
                Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // "City Card Gold" Text
                        Text(
                          'City Card Gold',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        // Join Gold Today Row
                        Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Join Gold Today',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 8.0), // Space between text and icon
                                Image.asset(
                                  'assets/icons/gold.png',
                                  height: 24.0, // Adjust the size as needed
                                  width: 24.0, // Adjust the size as needed
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromRGBO(21, 21, 21, 0.36), // Set the color with opacity
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5.0),

                Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // "City Card Gold" Text
                        Text(
                          'Enterprises',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        // Join Gold Today Row
                        Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'For Employees',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 8.0), // Space between text and icon
                                Image.asset(
                                  'assets/icons/smile.png',
                                  height: 24.0, // Adjust the size as needed
                                  width: 24.0, // Adjust the size as needed
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromRGBO(21, 21, 21, 0.36), // Set the color with opacity
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5.0),

                Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // "Your Order" Text
                        Text(
                          'More',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        // Order Row
                        Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Choose Language',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 8.0), // Space between text and icon
                                Image.asset(
                                  'assets/icons/lnguge.png',
                                  height: 24.0, // Adjust the size as needed
                                  width: 24.0, // Adjust the size as needed
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromRGBO(21, 21, 21, 0.36), // Set the color with opacity
                            ),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        // Address Book Row
                        Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Feedback',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 8.0), // Space between text and icon
                                Image.asset(
                                  'assets/icons/fndback.png',
                                  height: 24.0, // Adjust the size as needed
                                  width: 24.0, // Adjust the size as needed
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromRGBO(21, 21, 21, 0.36), // Set the color with opacity
                            ),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        // Favorite Orders Row
                        Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Help and Support',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 8.0), // Space between text and icon
                                Image.asset(
                                  'assets/icons/help.png',
                                  height: 24.0, // Adjust the size as needed
                                  width: 24.0, // Adjust the size as needed
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromRGBO(21, 21, 21, 0.36), // Set the color with opacity
                            ),
                          ],
                        ),

                        SizedBox(height: 16.0),
                        // Favorite Orders Row
                        Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Settings',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 8.0), // Space between text and icon
                                Image.asset(
                                  'assets/icons/settings.png',
                                  height: 24.0, // Adjust the size as needed
                                  width: 24.0, // Adjust the size as needed
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromRGBO(21, 21, 21, 0.36), // Set the color with opacity
                            ),
                          ],
                        ),

                        SizedBox(height: 16.0),
                        // Favorite Orders Row
                        Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Log out',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 8.0), // Space between text and icon
                                Image.asset(
                                  'assets/icons/like.png',
                                  height: 24.0, // Adjust the size as needed
                                  width: 24.0, // Adjust the size as needed
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromRGBO(21, 21, 21, 0.36), // Set the color with opacity
                            ),
                          ],
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
      bottomNavigationBar:  BottomNavigation(),
    );
  }
}
