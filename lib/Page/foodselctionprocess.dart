import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/location.png',
                        height: 24.0,  // Adjust the size as needed
                        width: 24.0,   // Adjust the size as needed
                      ),
                      SizedBox(width: 5),
                      Text(
                        "My Location",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0, top: 8), // Add padding
                    child: Image.asset(
                      'assets/icons/person.png',
                      height: 34.0,  // Adjust the size as needed
                      width: 34.0,   // Adjust the size as needed
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28),
                child: Text(
                  "Additional Text Below My Location",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0x5C2F7924), // 36% opacity of #2F7924
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search...",
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Image.asset(
                          'assets/icons/mic.png',
                          height: 24.0,  // Adjust the size as needed
                          width: 24.0,   // Adjust the size as needed
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
