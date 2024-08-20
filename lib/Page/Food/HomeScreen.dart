import 'dart:async';

import 'package:citycart/Page/AdressBook.dart';
import 'package:citycart/Page/Food/F_Profile.dart';
import 'package:citycart/Page/Food/FoodCartView.dart';
import 'package:citycart/Page/Food/Food_Bottom_navbar.dart';
import 'package:citycart/Page/foodselctionprocess.dart';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// void main() {
//   runApp(
//     Directionality(
//       textDirection: TextDirection.ltr, // You can change this to TextDirection.rtl if needed
//       child: CityCartScreen(),
//     ),
//   );
// }


class Foodpage extends StatefulWidget {
  const Foodpage({super.key});

  @override
  _CityCartScreenState createState() => _CityCartScreenState();
}

class _CityCartScreenState extends State<Foodpage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  int _selectedIndex = 0;
  final int _itemCount = 4; // Change to the number of cards you want
  late Timer _timer;

  final List<Map<String, dynamic>> items = [
    {
      'image': 'assets/images/sale.png',
      'name': '',
      'width': 90.0,
      'height': 90.0,
      'borderRadius': 16.0,
      'imageWidth': 90.0,
      'imageHeight': 90.0,
    },
    {
      'image': 'assets/images/burger.png',
      'name': 'Health',
      'width': 100.0,
      'height': 90.0,
      'borderRadius': 16.0,
      'imageWidth': 70.0,
      'imageHeight': 70.0,
    },
    {
      'image': 'assets/images/product2.png',
      'name': 'Product 2',
      'width': 100.0,
      'height': 90.0,
      'borderRadius': 16.0,
      'imageWidth': 100.0,
      'imageHeight': 90.0,
    },
    {
      'image': 'assets/images/product3.png',
      'name': 'Product 3',
      'width': 100.0,
      'height': 90.0,
      'borderRadius': 16.0,
      'imageWidth': 120.0,
      'imageHeight': 90.0,
    },
    {
      'image': 'assets/images/product4.png',
      'name': 'Product 4',
      'width': 100.0,
      'height': 90.0,
      'borderRadius': 16.0,
      'imageWidth': 120.0,
      'imageHeight': 90.0,
    },
    // Add more items as needed with different designs
  ];

  final List<String> bannerImages = [
    'assets/images/coupanbanner.png', // Add your banner images here
    'assets/images/coupanbanner.png',
    'assets/images/coupanbanner.png',
    'assets/images/coupanbanner.png',
    'assets/images/coupanbanner.png',
  ];

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < bannerImages.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
     child: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Location and Profile Icons with Search Bar Section
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
                    const SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 28.0),
                      child: SizedBox(
                        width: 270.0, // Set the desired width
                        height: 45.0, // Set the desired height
                        child: Stack(
                          children: [
                            GestureDetector(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: '"Food"',
                                prefixIcon: Image.asset(
                                  'assets/icons/search.png',
                                  height: 24.0,  // Adjust the size as needed
                                  width: 24.0,   // Adjust the size as needed
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                contentPadding: const EdgeInsets.only(
                                    bottom: 8.0), // Adjust the bottom padding to lower the hint text
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: const BorderSide(
                                    color: Colors.grey, // Set the border color to grey
                                    width: 1.0, // Adjust the border width as needed
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade600, // Slightly darker grey when focused
                                    width: 1.5, // Adjust the border width as needed
                                  ),
                                ),
                              ),
                              onTap: () {
                                // Navigate to the next page when the user taps on the TextField
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SearchPage()), // Replace with your next page widget
                                );
                              },
                              ),
                            ),
                            Positioned(
                              right: -2.0, // Adjust the position of the icon from the right
                              top: -2.0, // Adjust the position of the icon from the top
                              bottom: 2.0, // Adjust the position of the icon from the bottom
                              child: IconButton(
                                icon: Image.asset(
                                  'assets/icons/mic.png', // Path to your mic.png icon
                                  width: 32.0, // Set the width for the icon
                                  height: 32.0, // Set the height for the icon
                                ),
                                onPressed: () {
                                  // Add your voice input logic here
                                },
                              ),

                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              // Banner Section
              SizedBox(
                height: 180.0, // Adjust the height as needed
                child: Stack(
                  children: [
                    PageView.builder(
                      controller: _pageController,
                      itemCount: bannerImages.length, // Number of banners
                      onPageChanged: (index) {
                        setState(() {
                          _currentPage = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 1.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage(bannerImages[index]), // Use the images from the list
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                    Positioned(
                      bottom: 8.0,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(bannerImages.length, (index) {
                          return AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.symmetric(horizontal: 4.0),
                            width: _currentPage == index ? 8.0 : 6.0,
                            height: _currentPage == index ? 8.0 : 6.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentPage == index ? Colors.black : Colors.white,
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
              // Rectangular Container Section with Manually Adjusted Height and Width
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 48.0),
                child: Container(
                  height: 58.0, // Manually adjust the height
                  width: 360, // Make the container take full width
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200], // Greyish-white background
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Fresh Groceries',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey[600],
                                ),
                              ),
                              Text(
                                'Delivered to your doorstep',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: SizedBox(
                          width: 60.0, // Manually adjust the width of the image
                          height: 50.0, // Manually adjust the height of the image
                          child: Image.asset(
                            'assets/images/coupanbanner.png', // Replace with your image asset
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Explore Section
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        flex: 1, // Smaller divider
                        child: Divider(
                          color: Colors.grey[400], // Greyish line
                          thickness: 1.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Explore',
                          style: TextStyle(
                            fontSize: 18.0, // Font size for "Explore"
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 6, // Larger divider
                        child: Divider(
                          color: Colors.grey[400], // Greyish line
                          thickness: 1.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),

                 Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: SizedBox(
                        height: 100, // Adjust height as needed
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10, // Number of items
                          itemBuilder: (context, index) {
                            return Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Container(
                              width: 100.0, // Adjust width as needed
                              height: 100.0, // Adjust height as needed
                              decoration: BoxDecoration(
                                color: Colors.grey[300], // Set background color to grey[300]
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/sale.png', // Replace with your item image
                              width: 100.0, // Adjust image width to match container
                              height: 100.0, // Adjust image height to match container
                              fit: BoxFit.cover,
                            ),
                          ),
                    Container(
                      width: 100.0, // Adjust width as needed
                      height: 100.0,
                      alignment: Alignment.bottomLeft, // Align the text to the bottom left of the container
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        // color: Colors.black.withOpacity(0.5), // Optional: Overlay for better text visibility
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 4.0,left: 4), // Add padding around the text
                        child: Text(
                          'Item Name', // Replace with your item name
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white, // White text color for contrast
                          ),
                         // Align the text to the left
                        ),
                      ),
                    ),

                    ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),



          // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  //   child: SizedBox(
                  //     height: 95.0, // Adjust height as needed
                  //     child: ListView.builder(
                  //       scrollDirection: Axis.horizontal,
                  //       itemCount: items.length, // Number of items
                  //       itemBuilder: (context, index) {
                  //         final item = items[index];
                  //         return Padding(
                  //           padding: const EdgeInsets.only(right: 16.0),
                  //           child: Container(
                  //             width: item['width'], // Apply width based on the item
                  //             height: item['height'], // Apply height based on the item
                  //             decoration: BoxDecoration(
                  //               color: Colors.grey[300], // Set background color to grey[300]
                  //               borderRadius: BorderRadius.circular(item['borderRadius']),
                  //             ),
                  //             child: Column(
                  //               mainAxisAlignment: MainAxisAlignment.center,
                  //               children: [
                  //                 ClipRRect(
                  //                   borderRadius: BorderRadius.circular(item['borderRadius']),
                  //                   child: Image.asset(
                  //                     item['image'],
                  //                     width: item['imageWidth'], // Set specific width for image
                  //                     height: item['imageHeight'], // Set specific height for image
                  //                     fit: BoxFit.cover,
                  //                   ),
                  //                 ),
                  //
                  //                 Padding(padding: const EdgeInsets.only(right: 22,),// Space between image and text
                  //               child:  Text(
                  //                   item['name'],
                  //                   style: const TextStyle(
                  //                     fontSize: 16.0, // Adjusted font size for fitting inside the box
                  //                     fontWeight: FontWeight.bold,
                  //
                  //                   ),
                  //                 ),
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //         );
                  //       },
                  //     ),
                  //   ),
                  // ),

                ],
              ),

              SizedBox(height: 20,),

              // Whats is you Mood
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        flex: 1, // Smaller divider
                        child: Divider(
                          color: Colors.grey[400], // Greyish line
                          thickness: 1.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'What’s Your Mood',
                          style: TextStyle(
                            fontSize: 18.0, // Font size for "Explore"
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 6, // Larger divider
                        child: Divider(
                          color: Colors.grey[400], // Greyish line
                          thickness: 1.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              height: 100, // Adjust height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10, // Number of items
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Container(
                      width: 100.0, // Adjust width as needed
                      height: 100.0, // Adjust height as needed
                      decoration: BoxDecoration(
                        color: Colors.grey[300], // Set background color to grey[300]
                        shape: BoxShape.circle, // Make the container circular
                      ),
                      child: Stack(
                        children: [
                          ClipOval( // Use ClipOval to ensure the image is circular
                            child: Image.asset(
                              'assets/images/tea.png', // Replace with your item image
                              width: 100.0, // Adjust image width to match container
                              height: 100.0, // Adjust image height to match container
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            width: 100.0, // Adjust width as needed
                            height: 100.0, // Adjust height as needed
                            alignment: Alignment.center, // Center the text within the circular container
                            child: Text(
                              'Tea Break', // Replace with your item name
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white, // White text color for contrast
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),




          // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  //   child: SizedBox(
                  //     height: 95.0, // Adjust height as needed
                  //     child: ListView.builder(
                  //       scrollDirection: Axis.horizontal,
                  //       itemCount: items.length, // Number of items
                  //       itemBuilder: (context, index) {
                  //         final item = items[index];
                  //         return Padding(
                  //           padding: const EdgeInsets.only(right: 16.0),
                  //           child: Container(
                  //             width: item['width'], // Apply width based on the item
                  //             height: item['height'], // Apply height based on the item
                  //             decoration: BoxDecoration(
                  //               color: Colors.grey[300], // Set background color to grey[300]
                  //               borderRadius: BorderRadius.circular(item['borderRadius']),
                  //             ),
                  //             child: Column(
                  //               mainAxisAlignment: MainAxisAlignment.center,
                  //               children: [
                  //                 ClipRRect(
                  //                   borderRadius: BorderRadius.circular(item['borderRadius']),
                  //                   child: Image.asset(
                  //                     item['image'],
                  //                     width: item['imageWidth'], // Set specific width for image
                  //                     height: item['imageHeight'], // Set specific height for image
                  //                     fit: BoxFit.cover,
                  //                   ),
                  //                 ),
                  //
                  //                 Padding(padding: const EdgeInsets.only(right: 22,),// Space between image and text
                  //               child:  Text(
                  //                   item['name'],
                  //                   style: const TextStyle(
                  //                     fontSize: 16.0, // Adjusted font size for fitting inside the box
                  //                     fontWeight: FontWeight.bold,
                  //
                  //                   ),
                  //                 ),
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //         );
                  //       },
                  //     ),
                  //   ),
                  // ),

                ],
              ),


              //Recommend Section
              Column(
                 crossAxisAlignment: CrossAxisAlignment.start, // Aligns the text to the left in the column
                 children: [
                   // Your existing widgets (e.g., list of circular items) can go here

                   const SizedBox(height: 16.0), // Space between the existing widgets and the new container

                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add padding on both sides
                     child: Container(
                       width: double.infinity, // Take the full width of the screen
                       // Set height to accommodate both the "Recommended" text and ListView
                       height: 220.0, // Adjust height as needed to fit both text and ListView
                       decoration: BoxDecoration(
                         color: Colors.grey[300], // Set background color to grey
                        // borderRadius: BorderRadius.circular(8.0), // Optional: Add border radius for rounded corners
                       ),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           // "Recommended" text
                           Padding(
                             padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                             child: const Text(
                               'Recommended',
                               style: TextStyle(
                                 fontSize: 18.0,
                                 fontWeight: FontWeight.bold,
                                 color: Color(0xFF1A4514), // Text color
                                 shadows: [
                                   Shadow(
                                     offset: Offset(2.0, 2.0), // Position of the shadow
                                     blurRadius: 4.0, // How much the shadow is blurred
                                     color: Colors.grey, // Shadow color
                                   ),
                                 ],
                               ),
                             ),
                           ),

                           const SizedBox(height: 16.0), // Space between the "Recommended" text and the ListView

                           // ListView with card views
                           Padding(
                             padding: const EdgeInsets.only(left: 2),
                             child: Container(
                               height: 135.0, // Adjust height as needed for the ListView
                               child: ListView.builder(
                                 scrollDirection: Axis.horizontal,
                                 itemCount: 10, // Change to the number of cards you want
                                 itemBuilder: (context, index) {
                                   return Container(
                                     width: 250.0, // Adjust width as needed
                                     margin: const EdgeInsets.symmetric(horizontal: 8.0), // Space between cards
                                     decoration: BoxDecoration(
                                       color: Colors.white, // Background color for the card
                                       borderRadius: BorderRadius.circular(8.0), // Rounded corners
                                       boxShadow: [
                                         BoxShadow(
                                           color: Colors.grey.withOpacity(0.3), // Shadow color
                                           spreadRadius: 2, // Shadow spread
                                           blurRadius: 5, // Shadow blur
                                           offset: Offset(0, 3), // Shadow offset
                                         ),
                                       ],
                                     ),
                                     child: Stack(
                                       children: [
                                         ClipRRect(
                                           borderRadius: BorderRadius.circular(8.0), // Rounded corners
                                           child: Image.asset(
                                               'assets/images/coupanbanner.png', // Replace with your image asset
                                             fit: BoxFit.cover,
                                             height: double.infinity,
                                             width: double.infinity,
                                           ),
                                         ),
                                         Positioned(
                                           // left: 8.0, // Adjust as needed
                                           // top: 8.0,  // Adjust as needed
                                           child: Container(
                                             width: 170.0, // Set the width of the image
                                             height: 170.0, // Set the height of the image
                                             decoration: BoxDecoration(
                                               borderRadius: BorderRadius.circular(8.0), // Optional: for rounded corners
                                             ),
                                             child: Stack(
                                               children: [
                                                 ClipRRect(
                                                   borderRadius: BorderRadius.circular(8.0), // Match the border radius if needed
                                                   child: Image.asset(
                                                     'assets/images/halfcircle.png', // Replace with your image asset
                                                     fit: BoxFit.cover,
                                                     width: double.infinity,
                                                     height: double.infinity,
                                                   ),
                                                 ),
                                                 Positioned(
                                                   left: -2.0, // Move the banner slightly outside the image
                                                   top: 10.0,
                                                   child: Container(
                                                     padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                                                     decoration: BoxDecoration(
                                                       color: Color(0xFF1A4514), // Background color of the banner
                                                       borderRadius: BorderRadius.circular(6.0), // Border radius of 8
                                                     ),// Background color of the banner
                                                     child: Row(
                                                       children: [
                                                         Text(
                                                           '4.2',
                                                           style: TextStyle(
                                                             fontSize: 12.0,
                                                             color: Colors.white,
                                                             fontWeight: FontWeight.bold,
                                                           ),
                                                         ),
                                                         const SizedBox(width: 4.0),
                                                         Icon(Icons.star, size: 16.0, color: Colors.white),
                                                       ],
                                                     ),
                                                   ),
                                                 ),
                                                 Positioned(
                                                   left: 16.0,
                                                   top: 40.0,
                                                   child: Text(
                                                     'Shah Kitchen',
                                                     style: TextStyle(
                                                       fontSize: 14.0,
                                                       fontWeight: FontWeight.bold,
                                                       color: Color(0xFF1A4514), // Text color
                                                     ),
                                                   ),
                                                 ),
                                                 Positioned(
                                                   left: 16.0,
                                                   bottom: 55.0,
                                                   child: Row(
                                                     children: [
                                                       Icon(Icons.access_time, size: 16.0, color: Color(0xFFA4A4A4)),
                                                       const SizedBox(width: 4.0),
                                                       Text(
                                                         '30 - 1 hrs',
                                                         style: TextStyle(
                                                           fontSize: 12.0,
                                                           color: Color(0xFFA4A4A4),
                                                         ),
                                                       ),
                                                     ],
                                                   ),
                                                 ),
                                                 Positioned(
                                                   left: 16.0,
                                                   bottom: 35.0,
                                                   child: Text(
                                                     '150 - 1200/ person',
                                                     style: TextStyle(
                                                       fontSize: 12.0,
                                                       color: Color(0xFFA4A4A4),
                                                       fontWeight: FontWeight.bold,
                                                     ),
                                                   ),
                                                 ),
                                                 Positioned(
                                                   left: 15.0,
                                                   bottom: 5.0,
                                                   child: Text(
                                                     'Exciting Offers',
                                                     style: TextStyle(
                                                       fontSize: 14.0,
                                                       color: Colors.red,
                                                       fontWeight: FontWeight.bold,
                                                     ),
                                                   ),
                                                 ),
                                               ],
                                             ),
                                           ),
                                         ),
                                       ],
                                     ),
                                   );
                                 },
                               ),
                             ),
                           ),





                         ],
                       ),
                     ),
                   ),

           // Space between the "Recommended" container and other widgets (if any)
         ],
       ),
              SizedBox(height: 20,),

              // All Restaurants
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        flex: 1, // Smaller divider
                        child: Divider(
                          color: Colors.grey[400], // Greyish line
                          thickness: 1.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'All Restaurants',
                          style: TextStyle(
                            fontSize: 18.0, // Font size for "Explore"
                            color: Colors.grey[600],
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 6, // Larger divider
                        child: Divider(
                          color: Colors.grey[400], // Greyish line
                          thickness: 1.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0), // Horizontal padding (left and right)
                        child: Padding(
                          padding: const EdgeInsets.only(right: 16.0), // Additional right padding
                          child: Text(
                            '120',
                            style: TextStyle(
                              fontSize: 18.0, // Font size for "Explore"
                              color: Colors.grey[600],
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18.0),
          Container(
            height: 40.0, // Height of the button row
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // Sort button
                Container(
                  margin: const EdgeInsets.only(bottom: 5.0, left: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: _selectedIndex == 0 ? Colors.white : Colors.black,
                      backgroundColor: _selectedIndex == 0 ? const Color(0xFF1A4514) : Colors.white,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            _selectedIndex == 0 ? Colors.white : Colors.black,
                            BlendMode.srcIn,
                          ),
                          child: Image.asset('assets/icons/sort.png', width: 16.0, height: 16), // Replace with your icon asset
                        ),
                        const SizedBox(width: 4.0),
                        const Text('Sort'),
                      ],
                    ),
                  ),
                ),
                // Ratings button
                Container(
                  margin: const EdgeInsets.only(bottom: 5.0, left: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: _selectedIndex == 1 ? Colors.white : Colors.black,
                      backgroundColor: _selectedIndex == 1 ? const Color(0xFF1A4514) : Colors.white,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('Ratings'),
                        const SizedBox(width: 4.0),
                        const Text('4'),
                        const SizedBox(width: 4.0),
                        const Text('+'),
                       // Image.asset('assets/icons/add.png', width: 24.0), // Replace with your icon asset
                      ],
                    ),
                  ),
                ),
                // High Discount button
                Container(
                  margin: const EdgeInsets.only(bottom: 5.0, left: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: _selectedIndex == 2 ? Colors.white : Colors.black,
                      backgroundColor: _selectedIndex == 2 ? const Color(0xFF1A4514) : Colors.white,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Near and Fast'),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 5.0, left: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: _selectedIndex == 2 ? Colors.white : Colors.black,
                      backgroundColor: _selectedIndex == 2 ? const Color(0xFF1A4514) : Colors.white,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Non-Veg'),
                      ],
                    ),
                  ),
                ),
                // Cost Low to High button
                Container(
                  margin: const EdgeInsets.only(bottom: 5.0, left: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 3;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: _selectedIndex == 3 ? Colors.white : Colors.black,
                      backgroundColor: _selectedIndex == 3 ? const Color(0xFF1A4514) : Colors.white,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Veg'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

                  const SizedBox(height: 16.0),
                  // Generate SizedBox widgets with PaginatedCardView instances
                  ...generatePaginatedCardViews(5), // Specify the number of repeats
                  const SizedBox(height: 18.0),
                ],
              ),





              // Container(
              //   // Add your container properties here if needed
              //   child: PageView.builder(
              //     controller: _pageController,
              //     itemCount: _itemCount,
              //     itemBuilder: (context, index) {
              //       return Container(
              //         width: 250.0, // Adjust width as needed for each card
              //         margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0), // Space between cards
              //         decoration: BoxDecoration(
              //           color: Color(0xFFD9D9D9), // Background color for the card
              //           borderRadius: BorderRadius.circular(8.0), // Rounded corners
              //           boxShadow: [
              //             BoxShadow(
              //               color: Colors.grey.withOpacity(0.3), // Shadow color
              //               spreadRadius: 2, // Shadow spread
              //               blurRadius: 5, // Shadow blur
              //               offset: Offset(0, 3), // Shadow offset
              //             ),
              //           ],
              //         ),
              //         child: Stack(
              //           children: [
              //             Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 // Image at the top
              //                 ClipRRect(
              //                   borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)), // Rounded top corners
              //                   child: Image.asset(
              //                     'assets/images/foodimg.png', // Replace with your image asset
              //                     fit: BoxFit.cover,
              //                     height: 120.0, // Adjust height as needed
              //                     width: double.infinity,
              //                   ),
              //                 ),
              //                 const SizedBox(height: 8.0),
              //                 // Food name and time in the same row
              //                 Padding(
              //                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
              //                   child: Row(
              //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                     children: [
              //                       Text(
              //                         'Burger Munch', // Replace with dynamic text if needed
              //                         style: TextStyle(
              //                           fontSize: 20.0,
              //                           fontWeight: FontWeight.bold,
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.only(right: 10.0), // Add right padding
              //                         child: Row(
              //                           children: [
              //                             Icon(Icons.access_time, size: 16.0, color: Color(0xFF1A4514)),
              //                             const SizedBox(width: 4.0),
              //                             Text(
              //                               '30 min - 1 hr',
              //                               style: TextStyle(fontSize: 12.0, color: Colors.grey[700]),
              //                             ),
              //                           ],
              //                         ),
              //                       ),
              //                       const SizedBox(width: 4.0),
              //                       Padding(
              //                         padding: const EdgeInsets.only(right: 28.0, left: 4.0, bottom: 5),
              //                         child: Container(
              //                           padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              //                           decoration: BoxDecoration(
              //                             color: Color(0xFF1A4514), // Background color of the banner
              //                             borderRadius: BorderRadius.circular(6.0), // Border radius of 8
              //                           ),
              //                           child: Row(
              //                             mainAxisAlignment: MainAxisAlignment.center, // Center the content
              //                             crossAxisAlignment: CrossAxisAlignment.center, // Align the content in the center vertically
              //                             children: [
              //                               Text(
              //                                 '4.2',
              //                                 style: TextStyle(
              //                                   fontSize: 12.0,
              //                                   color: Colors.white,
              //                                   fontWeight: FontWeight.bold,
              //                                 ),
              //                               ),
              //                               const SizedBox(width: 4.0),
              //                               Icon(Icons.star, size: 16.0, color: Colors.white),
              //                             ],
              //                           ),
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //                 const SizedBox(height: 8.0),
              //                 // Food details
              //                 Padding(
              //                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
              //                   child: Row(
              //                     children: [
              //                       Text(
              //                         '100% Veg Only',
              //                         style: TextStyle(fontSize: 14.0, color: Colors.black),
              //                       ),
              //                       const SizedBox(width: 4.0),
              //                       Icon(Icons.circle, size: 8.0, color: Color(0xFF1A4514)),
              //                       const SizedBox(width: 4.0),
              //                       Text(
              //                         'Chinese',
              //                         style: TextStyle(fontSize: 14.0, color: Colors.black),
              //                       ),
              //                       const SizedBox(width: 4.0),
              //                       Icon(Icons.circle, size: 8.0, color: Color(0xFF1A4514)),
              //                       const SizedBox(width: 4.0),
              //                       Text(
              //                         '120',
              //                         style: TextStyle(fontSize: 14.0, color: Colors.black),
              //                       ),
              //                       const SizedBox(width: 4.0),
              //                       Text(
              //                         'for one',
              //                         style: TextStyle(fontSize: 12.0, color: Colors.black),
              //                       ),
              //                       const SizedBox(width: 4.0),
              //                       Icon(Icons.circle, size: 8.0, color: Color(0xFF1A4514)),
              //                       const SizedBox(width: 4.0),
              //                       Text(
              //                         '50 Variety',
              //                         style: TextStyle(fontSize: 12.0, color: Colors.black),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //                 const SizedBox(height: 4.0),
              //                 // Dashed divider line
              //                 CustomPaint(
              //                   size: Size(double.infinity, 1.0),
              //                   painter: DashedLinePainter(
              //                     color: Colors.black,
              //                     strokeWidth: 1.0,
              //                   ),
              //                 ),
              //                 const SizedBox(height: 8.0),
              //                 // Offer text
              //                 Padding(
              //                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
              //                   child: Text(
              //                     '20% off on first offer',
              //                     style: TextStyle(
              //                       fontSize: 14.0,
              //                       color: Color(0xFF1A4514),
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             // Positioned small card on top left with "Delivery" text
              //             Positioned(
              //               top: 110.0, // Adjust to move the card up
              //               left: -12.0, // Adjust to move the card left
              //               child: ClipPath(
              //                 clipper: HalfCutClipper(),
              //                 child: Container(
              //                   height: 22.0, // Set the height of the full box
              //                   width: 120.0, // Adjust width to ensure enough space for the icon and text
              //                   padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              //                   decoration: BoxDecoration(
              //                     color: Colors.grey[300], // Background color of the small card
              //                     borderRadius: BorderRadius.circular(16.0), // Rounded corners
              //                   ),
              //                   child: Row(
              //                     crossAxisAlignment: CrossAxisAlignment.center, // Center vertically
              //                     children: [
              //                       Padding(
              //                         padding: const EdgeInsets.only(left: 18.0), // Left padding for the icon
              //                         child: Image.asset(
              //                           'assets/icons/truck.png', // Replace with the correct path to your icon
              //                           height: 24.0, // Set the height of the icon
              //                           width: 24.0,  // Set the width of the icon
              //                           color: Color.fromRGBO(26, 69, 20, 0.67), // RGB values for #1A4514 with 67% opacity
              //                         ),
              //                       ),
              //                       const SizedBox(width: 4.0), // Space between the icon and text
              //                       Expanded(
              //                         child: Text(
              //                           '0.35 km',
              //                           style: TextStyle(
              //                             fontSize: 10.0,
              //                             color: Colors.grey[700],
              //                             fontWeight: FontWeight.bold,
              //                           ),
              //                           overflow: TextOverflow.ellipsis, // Handle overflow if text is too long
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ),
              //       );
              //     },
              //   ),
              // ),
              // Positioned(
              //   top: 90.0, // Adjust vertical position as needed
              //   right: 30.0, // Adjust horizontal position as needed
              //   child: SmoothPageIndicator(
              //     controller: _pageController,
              //     count: _itemCount,
              //     effect: WormEffect(
              //       dotColor: Color.fromRGBO(255, 255, 255, 0.39), // Grey color for inactive dots
              //       activeDotColor: Color(0xFFFFFFFF), // Dark green color for the active dot
              //       dotHeight: 8.0,
              //       dotWidth: 8.0,
              //       spacing: 10.0,
              //     ),
              //   ),
              // ),


              /// Card of images
              // Container(
              //   height: 200.0, // Adjust height as needed for the ListView
              //   child: ListView.builder(
              //     scrollDirection: Axis.vertical,
              //     itemCount: 10, // Change to the number of cards you want
              //     itemBuilder: (context, index) {
              //       return Container(
              //         width: 250.0, // Adjust width as needed for each card
              //         margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0), // Space between cards
              //         decoration: BoxDecoration(
              //           color: Color(0xFFD9D9D9), // Background color for the card
              //           borderRadius: BorderRadius.circular(8.0), // Rounded corners
              //           boxShadow: [
              //             BoxShadow(
              //               color: Colors.grey.withOpacity(0.3), // Shadow color
              //               spreadRadius: 2, // Shadow spread
              //               blurRadius: 5, // Shadow blur
              //               offset: Offset(0, 3), // Shadow offset
              //             ),
              //           ],
              //         ),
              //         child: Stack(
              //           children: [
              //             Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 // Image at the top
              //                 ClipRRect(
              //                   borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)), // Rounded top corners
              //                   child: Image.asset(
              //                     'assets/images/foodimg.png', // Replace with your image asset
              //                     fit: BoxFit.cover,
              //                     height: 100.0, // Adjust height as needed
              //                     width: double.infinity,
              //                   ),
              //                 ),
              //                 const SizedBox(height: 8.0),
              //                 // Food name and time in the same row
              //                 Padding(
              //                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
              //                   child: Row(
              //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                     children: [
              //                       Text(
              //                         'Burger Munch', // Replace with dynamic text if needed
              //                         style: TextStyle(
              //                           fontSize: 20.0,
              //                           fontWeight: FontWeight.bold,
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.only(right: 10.0), // Add right padding
              //                         child: Row(
              //                           children: [
              //                             Icon(Icons.access_time, size: 16.0, color: Color(0xFF1A4514),),
              //                             const SizedBox(width: 4.0),
              //                             Text(
              //                               '30 min - 1 hr',
              //                               style: TextStyle(fontSize: 12.0, color: Colors.grey[700]),
              //                             ),
              //                           ],
              //                         ),
              //                       ),
              //                       const SizedBox(width: 4.0),
              //                       Padding(
              //                         padding: const EdgeInsets.only(right: 28.0, left: 4.0, bottom: 5),
              //                         child: Container(
              //                           padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              //                           decoration: BoxDecoration(
              //                             color: Color(0xFF1A4514), // Background color of the banner
              //                             borderRadius: BorderRadius.circular(6.0), // Border radius of 8
              //                           ),// Background color of the banner
              //                           child: Row(
              //                             mainAxisAlignment: MainAxisAlignment.center, // Center the content
              //                             crossAxisAlignment: CrossAxisAlignment.center, // Align the content in the center vertically
              //                             children: [
              //                               Text(
              //                                 '4.2',
              //                                 style: TextStyle(
              //                                   fontSize: 12.0,
              //                                   color: Colors.white,
              //                                   fontWeight: FontWeight.bold,
              //                                 ),
              //                               ),
              //                               const SizedBox(width: 4.0),
              //                               Icon(Icons.star, size: 16.0, color: Colors.white),
              //                             ],
              //                           ),
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //
              //                 const SizedBox(height: 8.0),
              //                 // Food details
              //                 Padding(
              //                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
              //                   child: Row(
              //                     children: [
              //                       Text(
              //                         '100% Veg Only',
              //                         style: TextStyle(fontSize: 14.0, color: Colors.black),
              //                       ),
              //                       const SizedBox(width: 4.0),
              //                       Icon(Icons.circle, size: 8.0,color: Color(0xFF1A4514),),
              //                       const SizedBox(width: 4.0),
              //                       Text(
              //                         'Chinese',
              //                         style: TextStyle(fontSize: 14.0, color: Colors.black),
              //                       ),
              //                       const SizedBox(width: 4.0),
              //                       Icon(Icons.circle, size: 8.0, color: Color(0xFF1A4514),),
              //                       const SizedBox(width: 4.0),
              //                       Text(
              //                         '120',
              //                         style: TextStyle(fontSize: 14.0, color: Colors.black),
              //                       ),
              //                       const SizedBox(width: 4.0),
              //                       Text(
              //                         'for one',
              //                         style: TextStyle(fontSize: 12.0, color: Colors.black),
              //                       ),
              //                       const SizedBox(width: 4.0),
              //                       Icon(Icons.circle, size: 8.0, color: Color(0xFF1A4514),),
              //                       const SizedBox(width: 4.0),
              //                       Text(
              //                         '50 Variety',
              //                         style: TextStyle(fontSize: 12.0, color: Colors.black),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //
              //                 const SizedBox(height: 4.0),
              //                 // Dashed divider line
              //                 CustomPaint(
              //                   size: Size(double.infinity, 1.0),
              //                   painter: DashedLinePainter(
              //                     color: Colors.black,
              //                     strokeWidth: 1.0,
              //                   ),
              //                 ),
              //                 const SizedBox(height: 8.0),
              //                 // Offer text
              //                 Padding(
              //                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
              //                   child: Text(
              //                     '20% off on first offer',
              //                     style: TextStyle(
              //                       fontSize: 14.0,
              //                       color: Color(0xFF1A4514),
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             // Positioned small card on top left with "Delivery" text
              //             Positioned(
              //               top: 87.0, // Adjust to move the card up
              //               left: -12.0, // Adjust to move the card left
              //               child: ClipPath(
              //                 clipper: HalfCutClipper(),
              //                 child: Container(
              //                   height: 24.0, // Set the height of the full box
              //                   width: 120.0, // Adjust width to ensure enough space for the icon and text
              //                   padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              //                   decoration: BoxDecoration(
              //                     color: Colors.grey[300], // Background color of the small card
              //                     borderRadius: BorderRadius.circular(16.0), // Rounded corners
              //                   ),
              //                   child: Row(
              //                     crossAxisAlignment: CrossAxisAlignment.center, // Center vertically
              //                     children: [
              //                       Padding(
              //                         padding: const EdgeInsets.only(left: 18.0), // Left padding for the icon
              //                         child: Image.asset(
              //                           'assets/icons/truck.png', // Replace with the correct path to your icon
              //                           height: 24.0, // Set the height of the icon
              //                           width: 24.0,  // Set the width of the icon
              //                           color: Color.fromRGBO(26, 69, 20, 0.67) // RGB values for #1A4514 with 67% opacity
              //                         ),
              //                       ),
              //                       const SizedBox(width: 4.0), // Space between the icon and text
              //                       Expanded(
              //                         child: Text(
              //                           '0.35 km',
              //                           style: TextStyle(
              //                             fontSize: 12.0,
              //                             color: Colors.grey[700],
              //                             fontWeight: FontWeight.bold,
              //                           ),
              //                           overflow: TextOverflow.ellipsis, // Handle overflow if text is too long
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //             ),
              //
              //
              //
              //           ],
              //         ),
              //       );
              //     },
              //   ),
              // ),


            ],
          ),
        ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}



// Dashed Line

class DashedLinePainter extends CustomPainter {
  final Color color;
  final double strokeWidth;

  DashedLinePainter({this.color = Colors.black, this.strokeWidth = 1.0});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final double dashWidth = 12.0;
    final double dashSpace = 12.0;
    final double startX = 0.0;
    final double startY = size.height / 2;
    final double endX = size.width;
    final double endY = size.height / 2;

    final path = Path();
    path.moveTo(startX, startY);

    for (double x = startX; x < endX; x += dashWidth + dashSpace) {
      path.lineTo(x + dashWidth, startY);
      path.moveTo(x + dashWidth + dashSpace, startY);
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}


//
// class DashedLinePainter extends CustomPainter {
//   final Color color;
//   final double strokeWidth;
//
//   DashedLinePainter({this.color = Colors.black, this.strokeWidth = 0.5});
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = color.withOpacity(0.4) // Set color with 40% opacity
//       ..strokeWidth = strokeWidth
//       ..style = PaintingStyle.stroke;
//
//     final double dashWidth = 1;
//     final double dashSpace = 1;
//     final double startX = 0.0;
//     final double startY = size.height / 2;
//     final double endX = size.width;
//     final double endY = size.height / 2;
//
//     final path = Path();
//     path.moveTo(startX, startY);
//
//     for (double x = startX; x < endX; x += dashWidth + dashSpace) {
//       path.lineTo(x + dashWidth, startY);
//       path.moveTo(x + dashWidth + dashSpace, startY);
//     }
//
//     canvas.drawPath(path, paint);
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }
//
//

class HalfCutClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0); // Start at the top left corner
    path.lineTo(size.width, 0); // Line to the top right corner
    path.lineTo(size.width, size.height); // Line to the bottom right corner
    path.lineTo(0, size.height); // Line to the bottom left corner
    path.lineTo(0, size.height / 2); // Line to the middle of the left side
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; // No need to reclip as the shape won't change
  }
}

/// calling this PaginatedCardView Page
List<Widget> generatePaginatedCardViews(int count) {
  return List.generate(count, (index) {
    return SizedBox(
      height: 250.0, // Set a fixed height for the PaginatedCardView
      child: PaginatedCardView(),
    );
  });
}
