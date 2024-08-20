import 'package:citycart/Page/AdressBook.dart';
import 'package:citycart/Page/Food/Food_Bottom_navbar.dart';
import 'package:citycart/Page/Grocery/G_payment.dart';
import 'package:citycart/Page/Grocery/G_profile.dart';
import 'package:citycart/Page/Grocery/Grocery_Bottom_Navbar.dart';
import 'package:citycart/Page/foodselctionprocess.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(Wallet());
// }

class Wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
        SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"), // Path to your background image
                fit: BoxFit.cover, // Cover the entire screen
              ),
            ),
            padding: const EdgeInsets.only(top: 35, left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Row(
                //       children: [
                //         Image.asset(
                //           'assets/icons/location.png',
                //           height: 24.0,  // Adjust the size as needed
                //           width: 24.0,   // Adjust the size as needed
                //         ),
                //         SizedBox(width: 5),
                //         Text(
                //           "My Location",
                //           style: TextStyle(
                //             fontSize: 18,
                //             fontWeight: FontWeight.bold,
                //           ),
                //         ),
                //       ],
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.only(right: 12.0, top: 8), // Add padding
                //       child: Image.asset(
                //         'assets/icons/person.png',
                //         height: 34.0,  // Adjust the size as needed
                //         width: 34.0,   // Adjust the size as needed
                //       ),
                //     ),
                //   ],
                // ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons/location.png',
                                height: 24.0,  // Adjust the size as needed
                                width: 24.0,   // Adjust the size as needed
                              ), // Location Icon
                              const SizedBox(width: 6.0),
                              GestureDetector(
                                onTap: () {
                                  // Navigate to the next page when the user taps on the Container
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Addressbook()), // Replace with your next page widget
                                  );
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        Text(
                                          'Krishna Vihar Colony',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                            width: 4.0), // Space between text and icon
                                        Icon(
                                          Icons.keyboard_arrow_down_sharp,
                                          color: Color(0xFFE0E0E0), // Set the color using hex code
                                        )
                                        // Dropdown Icon
                                      ],
                                    ),
                                    const Text(
                                      'Home Address, Block D, Street 10, 221198',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          // Profile Icon in Circular Background
                          GestureDetector(
                            onTap: () {
                              // Navigate to the next page when the user taps on the Container
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Profile()), // Replace with your next page widget
                              );
                            },
                            child: Container(
                              width: 36.0, // Adjust the size as needed
                              height: 36.0, // Adjust the size as needed
                              decoration: BoxDecoration(
                                color: Colors.grey[300], // Light grey background color
                                shape: BoxShape.circle, // Circular shape
                              ),
                              child: const Icon(
                                Icons.person,
                                color: Colors.grey, // Greyish-white color for the icon
                                size: 32.0, // Adjust icon size as needed
                              ),
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                // Card view with Wallet Balance
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    "CityCart Wallet",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black, // You can change the color as needed
                    ),
                  ),
                ),
                SizedBox(height: 2),
                Center(
                  child:SizedBox(
                    width: 360, // Set the width of the card
                    height: 170,
                    child: Card(
                      color: Colors.grey[300], // Transparent card background
                      elevation: 2, // Adds a shadow effect

                      child: Padding(
                        padding: const EdgeInsets.all(16.0), // Padding inside the card
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 25.0),
                                  child: Text(
                                    'Wallet Balance',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 25.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        '₹10000',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(width: 5), // Space between the text and the icon
                                      Icon(
                                        Icons.keyboard_arrow_up, // Down arrow icon
                                        color: Colors.grey,   // Icon color
                                        size: 24.0,            // Icon size
                                      ),
                                    ],
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
                                  padding: const EdgeInsets.only(left: 48.0),
                                  child:Text(

                                    'Gift Card',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        '₹00000',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(width: 5), // Space between the text and the icon
                                      Image.asset(
                                        'assets/icons/edit.png',
                                        height: 24.0, // Adjust the size as needed
                                        width: 24.0, // Adjust the size as needed
                                      ), // Down arrow icon
                                      // Icon size
                                    ],
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
                                  padding: const EdgeInsets.only(left: 48.0),
                                  child:Text(

                                    'CityCart Credit',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 42.0),
                                  child:Text(
                                    '₹00000',
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
                ),
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min, // Minimizes the column size to fit its content
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 24, bottom: 12),
                        child: Text(
                          "Wallet",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black, // You can change the color as needed
                          ),
                        ),
                      ),
                      // Image on top
                      GestureDetector(
                        onTap: () {
                          // Navigate to the next page when the user taps on the Container
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Payment()), // Replace with your next page widget
                          );
                        },
                        child: SizedBox(
                          height: 150,
                          width: 350,
                          child: Card(
                            elevation: 2, // Adds a shadow effect to the card
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12), // Rounded corners for the card
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0), // Add padding around the image
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12), // Matches the card's rounded corners
                                child: Image.asset(
                                  'assets/images/banner.png', // Replace with the path to your image
                                  height: 150.0, // Set the desired height
                                  width: 450.0,  // Set the desired width
                                  fit: BoxFit.cover, // Ensures the image covers the card without distortion
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    "Others",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black, // You can change the color as needed
                    ),
                  ),
                ),
                SizedBox(height: 2),
                Center(
                  child:SizedBox(
                    width: 360, // Set the width of the card
                    height: 110,
                    child: Card(
                      color: Colors.grey[300], // Transparent card background
                      elevation: 2, // Adds a shadow effect

                      child: Padding(
                        padding: const EdgeInsets.all(16.0), // Padding inside the card
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Padding(padding: EdgeInsets.only(left: 25),
                              child:Row(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Claim A Gift Card',
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),

                                  Spacer(),
                                  Padding(padding: const EdgeInsets.only(right: 10),
                                    child: Icon(
                                      Icons.keyboard_arrow_right,
                                      color: Color.fromRGBO(21, 21, 21, 0.36), // Set the color with opacity
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Divider(color: Colors.black.withOpacity(0.2)),
                            Padding(padding: EdgeInsets.only(left: 25),
                              child:Row(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Purchase History',
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),

                                  Spacer(),
                                  Padding(padding: const EdgeInsets.only(right: 10),
                                    child: Icon(
                                      Icons.keyboard_arrow_right,
                                      color: Color.fromRGBO(21, 21, 21, 0.36), // Set the color with opacity
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),


                Padding(padding: const EdgeInsets.only(bottom: 20),
                  child:  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min, // Minimizes the column size to fit its content
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25, bottom: 10),
                          child: Text(
                            "CITYCART FOR ENTERPRISES",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black, // You can change the color as needed
                            ),
                          ),
                        ),
                        // Image on top
                        SizedBox(
                          height: 150,
                          width: 350,
                          child: Card(
                            elevation: 2, // Adds a shadow effect to the card
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12), // Rounded corners for the card
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0), // Add padding around the image
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12), // Matches the card's rounded corners
                                child: Image.asset(
                                  'assets/images/banner2.png', // Replace with the path to your image
                                  height: 150.0, // Set the desired height
                                  width: 450.0,  // Set the desired width
                                  fit: BoxFit.cover, // Ensures the image covers the card without distortion
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ),

// Space between the text and the image
              ],
            ),
          ),
        ),
        bottomNavigationBar: const GroceryBottomNavbar(),
      ),
    );
  }
}
