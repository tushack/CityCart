import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(16.0), // Add padding if needed
          child: GroceryCartview(), // Use PaginatedCardView inside the container
        ),
      ),
    );
  }
}

class GroceryCartview extends StatefulWidget {
  @override
  _PaginatedCardViewState createState() => _PaginatedCardViewState();
}

class _PaginatedCardViewState extends State<GroceryCartview> {
  final PageController _pageController = PageController();
  final int _itemCount = 4; // Change to the number of cards you want

  void _navigateToNextPage() {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => Foodcart(), // Replace with your next page widget
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // Add your container properties here if needed
          child: PageView.builder(
            controller: _pageController,
            itemCount: _itemCount,
            itemBuilder: (context, index) {
              return GestureDetector (
                  onTap: _navigateToNextPage,
                  child: Container(
                  width: 250.0, // Adjust width as needed for each card
                  margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0), // Space between cards
                  decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),// Background color for the card
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Image at the top
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)), // Rounded top corners
                            child: Image.asset(
                              'assets/images/foodimg.png', // Replace with your image asset
                              fit: BoxFit.cover,
                              height: 120.0, // Adjust height as needed
                              width: double.infinity,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          // Food name and time in the same row
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Fresh Mart', // Replace with dynamic text if needed
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0), // Add right padding
                                  child: Row(
                                    children: [
                                      Icon(Icons.access_time, size: 16.0, color: Color(0xFF1A4514)),
                                      const SizedBox(width: 4.0),
                                      Text(
                                        '30 min - 1 hr',
                                        style: TextStyle(fontSize: 12.0, color: Colors.grey[700]),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 4.0),
                                Padding(
                                  padding: const EdgeInsets.only(right: 18.0, left: 4.0, bottom: 5),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                                    decoration: BoxDecoration(
                                      color: Color(0xFF1A4514), // Background color of the banner
                                      borderRadius: BorderRadius.circular(6.0), // Border radius of 8
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center, // Center the content
                                      crossAxisAlignment: CrossAxisAlignment.center, // Align the content in the center vertically
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
                              ],
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          // Food details
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              children: [
                                Text(
                                  '100% Veg Only',
                                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                                ),
                                const SizedBox(width: 4.0),
                                Icon(Icons.circle, size: 8.0, color: Color(0xFF1A4514)),
                                const SizedBox(width: 4.0),
                                Text(
                                  'Chinese',
                                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                                ),
                                const SizedBox(width: 4.0),
                                Icon(Icons.circle, size: 8.0, color: Color(0xFF1A4514)),
                                const SizedBox(width: 4.0),
                                Text(
                                  '120',
                                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                                ),
                                const SizedBox(width: 4.0),
                                Text(
                                  'for one',
                                  style: TextStyle(fontSize: 12.0, color: Colors.black),
                                ),
                                const SizedBox(width: 4.0),
                                Icon(Icons.circle, size: 8.0, color: Color(0xFF1A4514)),
                                const SizedBox(width: 4.0),
                                Text(
                                  '50 Variety',
                                  style: TextStyle(fontSize: 12.0, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 4.0),
                          // Dashed divider line
                          CustomPaint(
                            size: Size(double.infinity, 1.0),
                            painter: DashedLinePainter(
                              color: Colors.black,
                              strokeWidth: 1.0,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          // Offer text
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              '20% off on first offer',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Color(0xFF1A4514),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Positioned small card on top left with "Delivery" text
                      Positioned(
                        top: 110.0, // Adjust to move the card up
                        left: -12.0, // Adjust to move the card left
                        child: ClipPath(
                          clipper: HalfCutClipper(),
                          child: Container(
                            height: 22.0, // Set the height of the full box
                            width: 120.0, // Adjust width to ensure enough space for the icon and text
                            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                            decoration: BoxDecoration(
                              color: Color(0xFFD9D9D9), // Background color of the small card
                              borderRadius: BorderRadius.circular(16.0), // Rounded corners
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center, // Center vertically
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 18.0), // Left padding for the icon
                                  child: Image.asset(
                                    'assets/icons/truck.png', // Replace with the correct path to your icon
                                    height: 24.0, // Set the height of the icon
                                    width: 24.0,  // Set the width of the icon
                                    color: Color.fromRGBO(26, 69, 20, 0.67), // RGB values for #1A4514 with 67% opacity
                                  ),
                                ),
                                const SizedBox(width: 4.0), // Space between the icon and text
                                Expanded(
                                  child: Text(
                                    '0.35 km',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold,
                                    ),
                                    overflow: TextOverflow.ellipsis, // Handle overflow if text is too long
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
                );
            },
          ),
        ),
        Positioned(
          top: 110.0, // Adjust vertical position as needed
          right: 30.0, // Adjust horizontal position as needed
          child: SmoothPageIndicator(
            controller: _pageController,
            count: _itemCount,
            effect: WormEffect(
              dotColor: Color.fromRGBO(255, 255, 255, 0.39), // Grey color for inactive dots
              activeDotColor: Color(0xFFFFFFFF), // Dark green color for the active dot
              dotHeight: 8.0,
              dotWidth: 8.0,
              spacing: 10.0,
            ),
          ),
        ),
      ],
    );
  }
}

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
