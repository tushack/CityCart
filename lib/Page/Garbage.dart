// import 'dart:ui';
// import 'package:flutter/material.dart';
//
// const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
//
// // void main() => runApp(const DropdownMenuApp());
//
// class DropdownMenuApp extends StatelessWidget {
//   const DropdownMenuApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(useMaterial3: true),
//       home: Scaffold(
//         appBar: AppBar(title: const Text('DropdownMenu Sample')),
//         body: const Center(
//           child: DropdownMenuExample(),
//         ),
//       ),
//     );
//   }
// }
//
// class DropdownMenuExample extends StatefulWidget {
//   const DropdownMenuExample({super.key});
//
//   @override
//   State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
// }
//
// class _DropdownMenuExampleState extends State<DropdownMenuExample>
//     with SingleTickerProviderStateMixin {
//   String dropdownValue = list.first;
//   String? hoveredValue;
//
//   late AnimationController _controller;
//   late Animation<double> _animation;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 700),
//     );
//     _animation = Tween<double>(begin: 10.0, end: -0.25).animate(
//       CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
//     );
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   void _showBottomSheet(BuildContext context, int index) {
//     showModalBottomSheet(
//       context: context,
//       isScrollControlled: true,
//       builder: (BuildContext context) {
//         return SizedBox(
//           height: 450,
//           width: double.infinity,
//           child: Stack(
//             clipBehavior: Clip.none,
//             children: [
//               Positioned(
//                 top: -80,
//                 left: 0,
//                 right: 0,
//                 child: Align(
//                   alignment: Alignment.topCenter,
//                   child: Padding(
//                     padding: const EdgeInsets.only(top: 12.0),
//                     child: Container(
//                       width: 40.0,
//                       height: 40.0,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: const Color(0xFFFFFFFFFF).withOpacity(0.2),
//                       ),
//                       child: ClipOval(
//                         child: BackdropFilter(
//                           filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
//                           child: Center(
//                             child: RotationTransition(
//                               turns: _animation,
//                               child: IconButton(
//                                 icon: const Icon(
//                                   Icons.close,
//                                   color: Colors.white,
//                                   size: 24.0,
//                                 ),
//                                 onPressed: () {
//                                   _controller.reverse().then((_) {
//                                     Navigator.of(context).pop();
//                                   });
//                                 },
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Card(
//                 color: const Color(0xFFE8F3E7),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(18.0),
//                 ),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(18.0),
//                   child: Container(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(12.0),
//                           child: Center(
//                             child: Container(
//                               width: 380.0,
//                               height: 140.0,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(18.0),
//                                 border: Border.all(color: Colors.grey, width: 1.0),
//                               ),
//                               child: ClipRRect(
//                                 borderRadius: BorderRadius.circular(18.0),
//                                 child: Image.asset(
//                                   'assets/images/coupanbanner.png', // Replace with your product image
//                                   width: 300.0,
//                                   height: 250.0,
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 4.0),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 16.0),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Row(
//                                 children: [
//                                   Image.asset(
//                                     'assets/icons/vegicon.png',
//                                     width: 16.0,
//                                     height: 16.0,
//                                   ),
//                                   const SizedBox(width: 4.0),
//                                   if (index % 2 == 0)
//                                     Container(
//                                       padding: const EdgeInsets.symmetric(
//                                           horizontal: 8.0, vertical: 2.0),
//                                       decoration: BoxDecoration(
//                                         color: Colors.yellow,
//                                         borderRadius: BorderRadius.circular(4.0),
//                                       ),
//                                       child: const Text(
//                                         'Bestseller',
//                                         style: TextStyle(
//                                           color: Colors.black,
//                                           fontSize: 12.0,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                       ),
//                                     ),
//                                   const SizedBox(width: 180.0),
//                                   Material(
//                                     elevation: 4.0,
//                                     shape: const CircleBorder(),
//                                     color: Colors.white,
//                                     child: Container(
//                                       width: 24.0,
//                                       height: 24.0,
//                                       decoration: const BoxDecoration(
//                                         shape: BoxShape.circle,
//                                       ),
//                                       child: const Icon(
//                                         Icons.favorite_border,
//                                         color: Colors.red,
//                                         size: 16.0,
//                                       ),
//                                     ),
//                                   ),
//                                   const SizedBox(width: 8.0),
//                                   Material(
//                                     elevation: 4.0,
//                                     shape: const CircleBorder(),
//                                     color: Colors.white,
//                                     child: Container(
//                                       width: 24.0,
//                                       height: 24.0,
//                                       decoration: const BoxDecoration(
//                                         shape: BoxShape.circle,
//                                       ),
//                                       child: const Icon(
//                                         Icons.share,
//                                         color: Colors.black,
//                                         size: 16.0,
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               const SizedBox(height: 4.0),
//                               Text(
//                                 'Saffola FITTIFY Gourmet Roasted Snack (100g) ${index + 1}',
//                                 style: const TextStyle(
//                                   color: Color(0xFF1A4514),
//                                   fontSize: 16.0,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               Row(
//                                 children: [
//                                   const Icon(Icons.star,
//                                       color: Colors.yellow, size: 16.0),
//                                   const Icon(Icons.star,
//                                       color: Colors.yellow, size: 16.0),
//                                   const Icon(Icons.star,
//                                       color: Colors.yellow, size: 16.0),
//                                   const Icon(Icons.star,
//                                       color: Colors.yellow, size: 16.0),
//                                   const Icon(Icons.star_border,
//                                       color: Colors.yellow, size: 16.0),
//                                   const SizedBox(width: 4.0),
//                                   Text(
//                                     '200 ratings',
//                                     style: TextStyle(
//                                       color: index % 2 == 0
//                                           ? Colors.white
//                                           : Colors.black,
//                                       fontSize: 12.0,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               const SizedBox(height: 4.0),
//                               Text(
//                                 '₹120',
//                                 style: TextStyle(
//                                   color: Colors.grey[700],
//                                   fontSize: 14.0,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               const SizedBox(height: 4.0),
//                               const Text(
//                                 'Description: Made with whole grains, these roasted '
//                                     'snacks are low in calories and high in fiber.',
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 12.0,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(height: 6.0),
//                         Row(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(left: 16),
//                               child: Expanded(
//                                 child: Container(
//                                   width: 150.0,
//                                   height: 40.0,
//                                   decoration: BoxDecoration(
//                                     gradient: const LinearGradient(
//                                       colors: [
//                                         Color(0xFF1A4514),
//                                         Color(0xFF40AB32),
//                                         Color(0xFF205418),
//                                       ],
//                                     ),
//                                     borderRadius: BorderRadius.circular(10.0),
//                                   ),
//                                   child: Center(
//                                     child: Row(
//                                       mainAxisAlignment: MainAxisAlignment.center,
//                                       children: const [
//                                         Text(
//                                           'Add Item',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 14.0,
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                         ),
//                                         SizedBox(width: 10.0),
//                                         Text(
//                                           '₹ 139',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 14.0,
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(width: 16),
//                             Container(
//                               width: 120.0,
//                               height: 50.0,
//                               padding:
//                               const EdgeInsets.symmetric(horizontal: 8.0),
//                               decoration: BoxDecoration(
//                                 color: const Color(0xFFE8F3E7),
//                                 borderRadius: BorderRadius.circular(10.0),
//                                 border:
//                                 Border.all(color: const Color(0xFF1A4514)),
//                               ),
//                               child: Row(
//                                 children: const [
//                                   Text('Quarter',
//                                       style: TextStyle(
//                                           color: Color(0xFF2F7924))),
//                                   SizedBox(width: 10.0),
//                                   Icon(Icons.arrow_drop_down,
//                                       color: Color(0xFF2F7924)),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     ).whenComplete(() {
//       _controller.reverse(); // Reverse the animation when the bottom sheet closes
//     });
//
//     _controller.forward(); // Start the rotation animation when the bottom sheet opens
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () => _showBottomSheet(context, 1),
//       child: const Text('Show Bottom Sheet'),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Special Price App',
      home: SpecialPrice(),
    );
  }
}

class SpecialPrice extends StatelessWidget {
  SpecialPrice({super.key});

  // Define custom green colors
  final Color inactiveGreen = Colors.green[400]!;
  final Color activeGreen = Colors.green[800]!;

  final List<String> imageUrls = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoOYrRzG61PkYiOygPyf1VHNkkPOR-4vqt0g&s', // Replace with your image URLs
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9dm6Ydi3PyVeiqHyLV6lQjeJL4wqC1Ritaw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl_XfTIMrbXaYIk-XiVLfY29-QPFEToon5hg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoOYrRzG61PkYiOygPyf1VHNkkPOR-4vqt0g&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoOYrRzG61PkYiOygPyf1VHNkkPOR-4vqt0g&s',
  ];

  final List<String> headings = [
    'Health',
    'Festival',
    'Coupons',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Special Price'),
      ),
      body: Theme(
        data: ThemeData(
          radioTheme: RadioThemeData(
            fillColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.selected)) {
                return activeGreen;
              } else {
                return inactiveGreen;
              }
            }),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image Container
              Container(
                height: 200,
                width: double.infinity,
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKurO0og0gi-M3C4JGAqFJddPOILvrtwqLmQ&s',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 8),

              // Offers Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    // Small horizontal line
                    Container(
                      height: 2,
                      width: 50,
                      color: Colors.green,
                    ),
                    const SizedBox(width: 8),

                    // "Offers" text
                    const Text(
                      'Offers',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Expanded green horizontal line
                    Expanded(
                      child: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),

              // Horizontal Scrollable Row
              Container(
                height: 120,
                color: Colors.white, // Use a lighter background color
                padding: const EdgeInsets.symmetric(horizontal: 8), // Add padding
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(imageUrls.length, (index) {
                    return Container(
                      width: 120,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      color: Color(0xFFF1FCED),

// Customize stripe color
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Image
                          Image.network(
                            imageUrls[index],
                            height: 60,
                            width: 60,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 8),

                          // Heading
                          Text(
                            headings[index],
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(height: 8),

              // Button Row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  children: [
                    // Sort Button
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.sort, color: Colors.green, size: 16),
                      label: const Text(
                        'Sort',
                        style: TextStyle(color: Colors.green, fontSize: 14),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        backgroundColor: Colors.white,
                        elevation: 5,
                        shadowColor: Colors.grey[400],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),

                    // Rating Button
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.star, color: Colors.green, size: 16),
                      label: const Text(
                        'Rating',
                        style: TextStyle(color: Colors.green, fontSize: 14),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        backgroundColor: Colors.white,
                        elevation: 5,
                        shadowColor: Colors.grey[400],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),

                    // Third Button
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Third Button',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        backgroundColor: Colors.green,
                        elevation: 5,
                        shadowColor: Colors.grey[400],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),

              // Menu Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    // Small horizontal line
                    Container(
                      height: 2,
                      width: 50,
                      color: Colors.green,
                    ),
                    const SizedBox(width: 8),

                    // "Menu" text
                    const Text(
                      'Menu',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Expanded green horizontal line
                    Expanded(
                      child: Container(
                        height: 2,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),

              // Top Choice Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Top Choice',
                      style: TextStyle(
                        color: Color(0xFF173817),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),

                    // Container with two horizontally divided parts
                    Container(
                      height: 180,
                      // padding: const EdgeInsets.all(8.0),  // Removed padding
                      decoration: BoxDecoration(
                        color: Colors.grey[200], // Changed background color to light grey
                        // borderRadius: BorderRadius.circular(12),  // Removed border radius
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          // Details
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0), // Padding is now only within this section
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Buttons
                                  Row(
                                    children: [
                                      Radio<bool>(
                                        value: true, // or false if you want it initially unchecked
                                        groupValue: null, // Use null if you don't want a group
                                        onChanged: (value) {
                                          // Handle radio button change here if needed
                                        },
                                        activeColor: Colors.green, // Set the green color
                                        fillColor: MaterialStateProperty.all(Colors.green), // This fills the radio button circle
                                      ),
                                      const SizedBox(width: 8),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.yellow,
                                          foregroundColor: Colors.white,
                                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                        ),
                                        child: const Text('Bestseller'),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),

                                  // Green heading
                                  const Text(
                                    'Maharaja Burger',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 2),

                                  // Star ratings
                                  Row(
                                    children: [
                                      Row(
                                        children: List.generate(
                                          5,
                                              (index) => const Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 16,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 4), // Add some space between the stars and the text
                                      Text(
                                        '200 reviews', // Change the rating to 200
                                        style: const TextStyle(color: Colors.black54),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 2),

                                  // Price
                                  const Text(
                                    '₹99.99', // Added the rupee symbol (₹)
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 1),

                                  // Description
                                  const Text(
                                    'This is a brief description of the product. It highlights key features and benefits.',
                                    style: TextStyle(color: Colors.black54, fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // Image
                          Container(
                            width: 120, // Increased width
                            height: 120, // Increased height
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Image.network(
                                    'https://images-cdn.welcomesoftware.com/Zz0wZjgyOWQ1ZWZiMmUxMWVjOGI5ZjJlMzBhNDYzMjQzNA==/Untitled.jpeg?width=1366',
                                    // Replace with your image URL
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  bottom: -12, // Adjusted position
                                  right: 22,
                                  child: Container( // Wrap the ElevatedButton in a Container
                                    width: 80, // Adjust the width of this Container
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white, // Changed button background color to white
                                        foregroundColor: Colors.green, // Changed text color to green
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20), // Rounded button corners
                                        ),
                                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8), // Adjusted padding
                                      ),
                                      child: const Text('Add +', style: TextStyle(color: Colors.black)), // Text instead of icon
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Example of using radio buttons

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
