import 'package:citycart/Page/otpPage.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg1.png'), // Path to your background image
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 60.0), // Move entire content up
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // CircleAvatar with padding
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10), // Padding around the CircleAvatar
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage('assets/images/logo.png'), // Path to your logo image
                    ),
                  ),
                  SizedBox(height: 10), // Space between CircleAvatar and dividers

                  // Two dividers with text in between
                  Row(
                    children: [
                      // Left divider with padding
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0,),
                          child: Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Divider(
                              thickness: 2,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Log in or sign up',
                        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      // Right divider with padding
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Divider(
                              thickness: 2,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Space between dividers and input fields

                  // Row with country flag and phone number input
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: InternationalPhoneNumberInput(
                        onInputChanged: (PhoneNumber number) {
                          // Handle phone number changes here
                        },
                        selectorConfig: SelectorConfig(
                          selectorType: PhoneInputSelectorType.DIALOG,
                        ),
                        ignoreBlank: false,
                        autoValidateMode: AutovalidateMode.onUserInteraction,
                        selectorTextStyle: TextStyle(color: Colors.grey),
                        textFieldController: TextEditingController(),
                        formatInput: false,
                        keyboardType: TextInputType.numberWithOptions(signed: true, decimal: true),
                        inputDecoration: InputDecoration(
                          hintText: 'Enter your phone number',
                          border: InputBorder.none,
                         // contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // Space between input fields and button

                  // Continue button
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF40AB32), Color(0xFF1A4514)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Otppage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(320, 20), // Rectangular size
                        padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 8), // Padding inside the button
                        backgroundColor: Colors.transparent, // Makes the button background transparent
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ), // Rounded corners
                        shadowColor: Colors.transparent, // Removes shadow
                      ),
                      child: Text(
                        'Continue',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                  ),

                  SizedBox(height: 10), // Space between button and dividers

                  // Terms divider and text
                  Row(
                    children: [
                      // Left divider with padding
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Divider(
                              thickness: 2,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'or',
                        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      // Right divider with padding
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Divider(
                              thickness: 2,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, top: 25, left: 8),
                    child: Text(
                      'By continuing,you agree to our',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        ' Terms of Services ',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 8,),
                      GestureDetector(
                        onTap: () {
                          // Handle continue tap
                        },
                        child: Text(
                          'Privacy Policy',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                      SizedBox(width: 8,),
                      GestureDetector(
                        onTap: () {
                          // Handle continue tap
                        },
                        child: Text(
                          'Content Policy',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
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
    );
  }
}
