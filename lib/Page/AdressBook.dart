
import 'package:flutter/material.dart';

void main() {
  runApp(const Addressbook());
}

class Addressbook extends StatefulWidget {
  const Addressbook({super.key});

  @override
  _AddressbookState createState() => _AddressbookState();
}

class _AddressbookState extends State<Addressbook> {
  int _selectedButtonIndex = 0; // Index of the selected button

  void _onButtonPressed(int index) {
    setState(() {
      _selectedButtonIndex = index; // Update the selected button index
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 375,
                height: 812,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF9F9F9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Stack(
                  children: [
                    // Top Bar
                    // Positioned(
                    //   left: 0,
                    //   top: 0,
                    //   child: Container(
                    //     width: 375,
                    //     height: 52,
                    //     padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                    //     decoration: BoxDecoration(
                    //       color: Colors.white.withOpacity(0.4),
                    //     ),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         Row(
                    //           children: [
                    //             Container(
                    //               width: 17,
                    //               height: 17,
                    //               child: const FlutterLogo(),
                    //             ),
                    //             const SizedBox(width: 10),
                    //             Container(
                    //               width: 17,
                    //               height: 17,
                    //               child: const FlutterLogo(),
                    //             ),
                    //             const SizedBox(width: 10),
                    //             Container(
                    //               width: 8,
                    //               height: 15,
                    //               child: const FlutterLogo(),
                    //             ),
                    //           ],
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),

                    // Background Map Image
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 390,
                        height: 349,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/mapimg.png"),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),


                    // Order Tracking Details
                    Positioned(
                      left: 0,
                      top: 290,
                      child: Container(
                        width: 375,
                        height: 470,
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.78),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(70),
                              topRight: Radius.circular(70),
                            ),
                          ),
                        ),
                        child: Stack(
                          children: [
                            // Detailed Address with Current Location Icon
                            Positioned(
                              left: 26.96,
                              top: 30,
                              child: Row(
                                children: [
                                  const Text(
                                    'Detailed Address',
                                    style: TextStyle(
                                      color: Color(0xFF1C1B1F),
                                      fontSize: 27.94,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(width: 60),
                                  SizedBox(
                                    width: 25, // Width of the custom icon
                                    height: 25, // Height of the custom icon
                                    child: Image.asset('assets/icons/currentl.png'),
                                  ),
                                ],
                              ),
                            ),

                            // Map Icon and "map address" Text
                            Positioned(
                              left: 26.96,
                              top: 80,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 25, // Width of the custom icon
                                    height: 25, // Height of the custom icon
                                    child: Image.asset('assets/icons/mao.png'),
                                  ),
                                  const SizedBox(width: 10),
                                  Container(
                                    padding: const EdgeInsets.only(right: 20), // Apply left and right padding
                                    child: CustomText(
                                      text:
                                      'The street in between anikupo and Ogba, beside bOlat building',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            // Change Name Button
                            Container(
                              padding: const EdgeInsets.only(top: 150, left: 60),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF1A4514), // Background color
                                  minimumSize: const Size(100, 40), // Width and height
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                child: const Text(
                                  'Change',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            // Divider Line
                            Padding(
                              padding: const EdgeInsets.only(top: 230, left: 15, right: 25),
                              child: const Divider(
                                color: Color.fromRGBO(217, 217, 217, 0.64), // Set the color with 64% opacity
                                thickness: 1,
                              ),
                            ),

                            Padding(padding: const EdgeInsets.only(top: 275 , left: 30,right: 15),
                          child:
                              const Text(
                              'Save Address as',
                              style: TextStyle(
                                color: Color(0xFF1C1B1F),
                                fontSize: 18,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              ),

                            Padding(
                              padding: const EdgeInsets.only(top: 310, left: 25, right: 25),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      ButtonWithState(
                                        label: 'Home',
                                        index: 0,
                                        selectedIndex: _selectedButtonIndex,
                                        onPressed: _onButtonPressed,
                                      ),
                                      const SizedBox(width: 10),
                                      ButtonWithState(
                                        label: 'School',
                                        index: 1,
                                        selectedIndex: _selectedButtonIndex,
                                        onPressed: _onButtonPressed,
                                      ),
                                      const SizedBox(width: 10),
                                      ButtonWithState(
                                        label: 'Office',
                                        index: 2,
                                        selectedIndex: _selectedButtonIndex,
                                        onPressed: _onButtonPressed,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                        Padding(padding: const EdgeInsets.only(top: 350 ,),
                          child:  Center(
                              child: Container(
                                width: 295,
                                height: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  gradient: LinearGradient(
                                    colors: [Color(0xFF40AB32), Color(0xFF1A4514)],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Handle button press here
                                    // Navigate to the next page when the user taps on the TextField
                                  //   Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(builder: (context) => Payment()), // Replace with your next page widget
                                  //   );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    shadowColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  child: Text(

                                    'Proceed',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ),


                          ],
                        ),
                      ),
                    ),
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

class CustomText extends StatelessWidget {
  final String text;

  const CustomText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Split the text into words
    List<String> words = text.split(' ');

    // Initialize an empty string for formatted text
    String formattedText = '';

    // Loop through the words and add a line break after every 6 words
    for (int i = 0; i < words.length; i++) {
      if (i > 0 && i % 7 == 0) {
        formattedText += '\n';
      }
      formattedText += words[i] + ' ';
    }

    return Text(
      formattedText.trim(),
      style: const TextStyle(
        color: Color(0xFF1C1B1F),
        fontSize: 16,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
      ),
      softWrap: true, // Ensure text wraps to the next line if it's too long
    );
  }
}


// ButtonWithState is a custom StatefulWidget to manage button state
class ButtonWithState extends StatelessWidget {
  final String label;
  final int index;
  final int selectedIndex;
  final ValueChanged<int> onPressed;

  const ButtonWithState({
    required this.label,
    required this.index,
    required this.selectedIndex,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 100, // Set the width of the button
        height:36, // Set the height of the button
            child: ElevatedButton(
          onPressed: () => onPressed(index),
          style: ElevatedButton.styleFrom(
            foregroundColor: selectedIndex == index ? Colors.white : const Color(0xFF1A4514), backgroundColor: selectedIndex == index ? const Color(0xFF1A4514) : Colors.white, // Text color
            side: BorderSide(color: const Color(0xFF1A4514)), // Border color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6), // Button border radius
            ),
            elevation: 0, // Remove shadow
          ),
              child: Text(label,
                style: TextStyle(
                fontSize: 14, // Set the text size
                color: selectedIndex == index ? Colors.white : const Color(0xFF1A4514), // Text color
              ),

              ),
            ),
    );
  }
}