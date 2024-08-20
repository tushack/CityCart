import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true, // Keeps the app bar fixed at the top
              backgroundColor: Colors.grey[100],
              elevation: 0, // Removes shadow
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(top: 60.0, left: 35, right: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0x5C2F7924), // 36% opacity of #2F7924
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Row(
                        children: [
                          // Search icon
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Image.asset(
                              'assets/icons/search.png', // Path to your search icon
                              height: 24.0,
                              width: 24.0,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search...",
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(bottom: 10.0),
                              ),
                            ),
                          ),
                          // Mic icon
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: IconButton(
                              icon: Image.asset(
                                'assets/icons/mic.png',
                                height: 24.0,
                                width: 24.0,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/icons/search.png',
                              height: 24.0,
                              width: 24.0,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Search",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/icons/sort.png',
                              height: 16.0,
                              width: 16.0,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Filter",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20), // Add space below the header
                  ],
                ),
              ),
              collapsedHeight: 140.0, // Adjust as needed
              expandedHeight: 140.0, // Adjust as needed
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) => ProductItem(),
                childCount: 10, // Number of items to display
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductItem extends StatefulWidget {
  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  int _quantity = 0;
  final int _pricePerUnit = 35; // Assuming the price per unit is 35

  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
  }

  void _decrementQuantity() {
    if (_quantity > 0) {
      setState(() {
        _quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: () {
      _showBottomSheet(context);
    },
      child: Container(
      margin: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          // The main content
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  // Product image
                  Image.asset(
                    'assets/images/image.png', // Path to your product image
                    height: 90.0,
                    width: 90.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 10),

                 Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Product Name', // Replace with actual product name
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Louis Vuitton', // Replace with actual product brand
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 2),
                        Row(
                          children: [
                            // Stars
                            Row(
                              children: List.generate(
                                5,
                                    (index) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 20.0,
                                ),
                              ),
                            ),
                            SizedBox(width: 8), // Space between stars and text
                            // Rating count text
                            Text(
                              '200', // Adjust text as needed
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey, // Color to match the design
                              ),
                            ),
                            SizedBox(width: 8), // Space between stars and text
                            // Rating count text
                            Text(
                              'Ratings', // Adjust text as needed
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey, // Color to match the design
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              '5kg',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(width: 8), // Space between text elements
                            Text(
                              '₹ (32 /kg)',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(width: 8), // Pushes the last text to the far right
                             // Align price to the right
                            Text(
                              '₹ ${_pricePerUnit * _quantity}',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 90),
                child: Card(
                  margin: EdgeInsets.zero,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0), // Set the border radius to 7
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0), // Same border radius for the container
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF1A4514), // Color #1A4514
                          Color(0xFF40AB32), // Color #40AB32
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Get extra 2% off on 1 item(s) (Price Inclusive of Taxes)', // Example long text
                        style: TextStyle(fontSize: 6, color: Colors.white), // Set text color to white for contrast
                        maxLines: 1, // Limits the text to 1 line
                        overflow: TextOverflow.ellipsis, // Shows "..." if the text exceeds the limit
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
          // Offer banner positioned absolutely
          Positioned(
            left: 8,
        child: Stack(
          children: [
            CustomPaint(
              size: const Size(59, 30),
              painter: RibbonTagCustomPainter(),
            ),
            Positioned(
              left: 0,
              top: 8,
              child: Text(
                '50% Off',
                style: TextStyle(
                  color: Colors.white, // Text color
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
          Positioned(
            bottom: 30,
            right: 4,
            child: Container(
              height: 38 ,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFF1A4514), // Use the same green color
                ),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.remove,color: Colors.grey,),
                    onPressed: _decrementQuantity,
                  ),
                  Text(
                    '$_quantity',
                    style: TextStyle(fontSize: 16),
                  ),
                  IconButton(
                    icon: Icon(Icons.add,color: Colors.grey),
                    onPressed: _incrementQuantity,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),),
    );
  }


  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Allows the bottom sheet to take the full height
      backgroundColor: Colors.transparent, // Makes the background of the bottom sheet transparent
      builder: (BuildContext context) {
        return Stack(
          clipBehavior: Clip.none, // Allows overflow of positioned elements
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              height: 350.0, // Adjust height as needed
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // "Choose an option" text at the top
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      'Choose an option',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),

                  // Product image, 5 kg, ( ₹ 32/ Kg ), 54 Rs, 23% off, and - 0 + controls
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Product image on the left side
                      Container(
                        width: 80.0,
                        height: 80.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.grey, width: 1.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/burger.jpg', // Replace with your product image
                            width: 80.0,
                            height: 80.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12.0),

                      // Product details (5 kg, ₹ 32/Kg, 54 Rs, 23% off)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                '5 kg',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              const Text(
                                '( ₹ 32/ Kg )',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8.0),
                          Row(
                            children: [
                              const Text(
                                '₹ 54',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6.0,
                                  vertical: 2.0,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                child: const Text(
                                  '23% off',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      // Spacer
                      const Spacer(),

                      // - 0 + controls aligned to the right side
                      Container(
                        width: 90.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(
                              Icons.remove,
                              size: 20.0,
                              color: Colors.grey,
                            ),
                            Text(
                              '0',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.add,
                              size: 20.0,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Product image on the left side
                      Container(
                        width: 80.0,
                        height: 80.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.grey, width: 1.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/burger.jpg', // Replace with your product image
                            width: 80.0,
                            height: 80.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12.0),

                      // Product details (5 kg, ₹ 32/Kg, 54 Rs, 23% off)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                '5 kg',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              const Text(
                                '( ₹ 32/ Kg )',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8.0),
                          Row(
                            children: [
                              const Text(
                                '₹ 54',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6.0,
                                  vertical: 2.0,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                child: const Text(
                                  '23% off',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      // Spacer
                      const Spacer(),

                      // - 0 + controls aligned to the right side
                      Container(
                        width: 90.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(
                              Icons.remove,
                              size: 20.0,
                              color: Colors.grey,
                            ),
                            Text(
                              '0',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.add,
                              size: 20.0,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // You can add more rows here if needed
                ],
              ),
            ),
            // Positioned close button
            Positioned(
              top: -80,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Container(
                    width: 40.0, // Adjust the width and height as needed
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.2), // White color with transparency
                    ),
                    child: ClipOval(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Center(
                          child: IconButton(
                            icon: Icon(Icons.close, color: Colors.white, size: 24.0),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

}


class RibbonTagCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final borderRadius = .9 ; // Radius for the left side corners

    Path path = Path();

    // Start at the top-left corner with rounded corner
    path.moveTo(borderRadius, 0);
    path.lineTo(10, borderRadius);
    path.arcToPoint(Offset(0, size.height - borderRadius),
        radius: Radius.circular(borderRadius), clockwise: false);

    // Draw the vertical line to the bottom-left corner
    path.lineTo(size.width * 0.95, size.height);

    // Draw the triangular cutout on the right side
    path.lineTo(size.width * 0.75, size.height * 0.5);

    // Draw a straight line to the top-right corner
    path.lineTo(size.width * 0.95, 0);

    // Close the path to the top-left corner
    path.close();

    Paint paint = Paint()..style = PaintingStyle.fill;
    paint.color = Colors.blue.withOpacity(1.0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
