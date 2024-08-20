import 'package:citycart/Page/Food/Food_Bottom_navbar.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: OrderDetailsScreen(),
        bottomNavigationBar: const BottomNavigation(),

      ),
    );
  }
}

class OrderDetailsScreen extends StatefulWidget {
  @override
  _ButtonRowState createState() => _ButtonRowState();
}

class _ButtonRowState extends State<OrderDetailsScreen> {
  int selectedIndex = -1; // Initially, no button is selected

  // Blending #1A4514 with 5% Colors.grey
  final blendedColor = blendColor(Color(0xFF1A4514), Colors.grey, 0.100);



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

     child:  Column(
      children: [
        Stack(
          children: [
            // Images at the top
            Container(
              height: 200, // Adjust as needed
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/coupanbanner.png'), // Replace with your image
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Semi-transparent overlay
            Container(
              height: 200, // Same height as the image
              width: double.infinity,
              color: Colors.black.withOpacity(0.7), // Adjust opacity as needed
            ),

            // Text overlay
            // Centered text with top padding
            Positioned(
              top: 20, // Adjust as needed
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 50), // Adjust the top padding as needed
                  child: Text(
                    'Health Food',
                    style: TextStyle(
                      fontSize: 37,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        // Additional content below the image

        SizedBox(height: 16,),
        /// Popular Categories

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
                    'Popular Categories',
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
                            // Image with rounded corners
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/sale.png', // Replace with your item image
                                width: 100.0, // Adjust image width to match container
                                height: 100.0, // Adjust image height to match container
                                fit: BoxFit.cover,
                              ),
                            ),
                            // Semi-transparent overlay for opacity
                            Container(
                              width: 100.0, // Adjust width as needed
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3), // Adjust opacity as needed
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            // Text aligned at the bottom left
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 4.0, left: 4.0), // Add padding around the text
                                child: Text(
                                  'Item Name', // Replace with your item name
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white, // White text color for contrast
                                  ),
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
            )


          ],
        ),

        SizedBox(height: 16,),

        // Rectangular Box Description
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 48.0),
          child: Container(
            height: 48.0, // Manually adjust the height
            width: 360, // Make the container take full width
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.grey[300], // Greyish-white background
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
                        // Text(
                        //   'Delivered to your doorstep',
                        //   style: TextStyle(
                        //     fontSize: 12.0,
                        //     color: Colors.grey[600],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: SizedBox(
                    width: 60.0, // Manually adjust the width of the container
                    height: 30.0, // Manually adjust the height of the container
                    child: Container(
                      height: 40,width: 120,
                      color: Colors.white, // Set the background color to white
                     alignment: Alignment.center, // Center the text inside the container
                      child: Text(
                        'Add description',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.grey[600], // Set the text color
                        ),
                        textAlign: TextAlign.center, // Center the text
                      ),
                    ),
                  ),
                )

              ],
            ),
          ),
        ),

        SizedBox(height: 18,),
        // Three buttons
        Container(
          height:40.0, // Height of the button row
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              // Sort button
              Container(
                margin: const EdgeInsets.only(bottom: 5.0, left: 20),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 0; // Set the selected index to 0 for Sort button
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: selectedIndex == 0 ? Colors.white : Colors.black,
                    backgroundColor: selectedIndex == 0 ? Color(0xFF1A4514) : Colors.white,
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
                          selectedIndex == 0 ? Colors.white : Colors.black,
                          BlendMode.srcIn,
                        ),
                        child: Image.asset(
                          'assets/icons/sort.png', // Replace with your icon asset
                          width: 24.0,
                          height: 24.0,
                        ),
                      ),
                      const SizedBox(width: 4.0),
                      Text('Sort'),
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
                      selectedIndex = 1; // Set the selected index to 1 for Ratings button
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: selectedIndex == 1 ? Colors.white : Colors.black,
                    backgroundColor: selectedIndex == 1 ? Color(0xFF1A4514): Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Ratings'),
                      const SizedBox(width: 4.0),
                      Text('4'),
                      const SizedBox(width: 4.0),
                      ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          selectedIndex == 1 ? Colors.white : Colors.black,
                          BlendMode.srcIn,
                        ),
                        child: Image.asset(
                          'assets/icons/add.png', // Replace with your icon asset
                          width: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Bessellers button
              Container(
                margin: const EdgeInsets.only(bottom: 5.0, left: 10),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 2; // Set the selected index to 2 for BestSellers button
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: selectedIndex == 2 ? Colors.white : Colors.black,
                    backgroundColor: selectedIndex == 2 ? Color(0xFF1A4514)  : Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('BestSellers'),
                    ],
                  ),
                ),
              ),
            ],
          ),

        ),

        SizedBox(height: 20,),
        /// Menu divider
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
                    'Menu',
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
              ],
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(left: 10,top: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between text and search box
            children: [
              // "Recommended" text
              const Text(
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

              // Search box
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 28.0, right: 10),
                  child: SizedBox(
                    width: 250.0, // Set the desired width
                    height: 45.0, // Set the desired height
                    child: Stack(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: '"Search"',
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
              ),


            ],
          ),
        ),
        SizedBox(height: 20,),

        // products List
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: SizedBox(
            height: 290,
            width: 530,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 10, // Number of items to display
              itemBuilder: (context, index) {
                return Container(
                  width: 100.0,
                  height: 160,// Width of each container
                  margin: const EdgeInsets.only(bottom: 16.0), // Space between containers
                  padding: const EdgeInsets.all(8.0), // Padding inside the container
                  decoration: BoxDecoration(
                    color: index % 2 == 0 ? Colors.grey[300] : Color(0x1FFFFFFF) // 5% opacity of white
                    , // Alternating colors
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  child: Row(
                    children: [
                      // Left side: Product details
                      Padding(padding: const EdgeInsets.only(left:20, top: 10),
                       child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Product name with Non-Veg icon and Bestseller tag
                            Row(
                              children: [
                                // Non-Veg icon
                                Image.asset(
                                  'assets/icons/vegicon.png',
                                  width: 16.0,
                                  height: 16.0,
                                ),
                                const SizedBox(width: 4.0),


                                // Bestseller tag (for even indexes)
                                if (index % 2 == 0)
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                                    decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    child: const Text(
                                      'Bestseller',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            const SizedBox(height: 4.0),

                            // Product name
                            Text(
                              'Product ${index + 1}',
                              style: TextStyle(
                                color: Color(0xFF1A4514),
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            // Stars and rating
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.yellow, size: 16.0),
                                Icon(Icons.star, color: Colors.yellow, size: 16.0),
                                Icon(Icons.star, color: Colors.yellow, size: 16.0),
                                Icon(Icons.star, color: Colors.yellow, size: 16.0),
                                Icon(Icons.star_border, color: Colors.yellow, size: 16.0),
                                const SizedBox(width: 4.0),
                                Text(
                                  '200 ratings',
                                  style: TextStyle(
                                    color: index % 2 == 0 ? Colors.white : Colors.black,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4.0),

                            // Price
                            Text(
                              '₹120',
                              style: TextStyle(
                                color: index % 2 == 0 ? Colors.grey[700] : Colors.grey[700],
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4.0),

                            // Description
                            Text(
                              'Pain killer medicine',
                              style: TextStyle(
                                color: index % 2 == 0 ? Colors.black : Colors.black,
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ),

                      // Right side: Product image in a container with an add button
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal:30 ),
                            width: 150.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/burger.jpg', // Replace with your product image
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:95,),
                                child: GestureDetector(
                                onTap: () {
                                      // Navigator.push(
                                      // context,
                                      // MaterialPageRoute(builder: (context) => NextPage()), // Replace `NextPage` with your actual page
                                      // );
                                },
                           child: Container(
                              height: 30,
                              width: 60,
                              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.5), // Semi-transparent green
                                borderRadius: BorderRadius.circular(10.0),
                               // border: Border.all(color: Colors.green, width: 1.0), // Optional: border to enhance visibility
                              ),
                              child: const Center(

                                child: Text(
                                  'Add +',
                                  style: TextStyle(
                                    color: Colors.black, // Text color to match the border
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,

                                  ),
                                ),
                              ),
                            ),
                          ),
                          ),

                        ],
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
    );
  }
}

Color blendColor(Color color1, Color color2, double amount) {
  return Color.lerp(color1, color2, amount)!;
}
