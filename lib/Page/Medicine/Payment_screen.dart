import 'package:citycart/Page/Medicine/Medicine_Bottom_Navbar.dart';
import 'package:citycart/Page/orderconfirmed.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        backgroundColor: Colors.grey[300], // Background color
        body:
        SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(26.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Padding(
    padding: const EdgeInsets.only(top: 14),
    child: Text(
    'Payment',
    style: TextStyle(
    fontSize: 24,
    color: Colors.black,
    ),
    ),
    ),
    SizedBox(height: 20),
    Card(
    color: Colors.white,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.0),
    ),
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    child: Row(
    children: [
    Image.asset(
    'assets/icons/paisa.png', // Path to the custom icon
    width: 34, // Set the width of the icon
    height: 34, // Set the height of the icon
    ),
    SizedBox(width: 10),
    Text(
    'CityCart Money',
    style: TextStyle(
    fontSize: 18,
    color: Color(0xB8000000),
    ),
    ),
    Spacer(),
    Icon(
    Icons.keyboard_arrow_down,
    color: Color.fromRGBO(21, 21, 21, 0.36),
    ),
    ],
    ),
    ),
    ),
    SizedBox(height: 30), // Space between the first card and "Cards" text
    Center(
    child: Text(
    'C A R D S',
    style: TextStyle(
    fontSize: 18,
    color: Color(0x59000000),
    ),
    ),
    ),
    SizedBox(height: 10), // Space between "Cards" text and the next card
    Card(
    color: Colors.white,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.0),
    ),
    child: Column(
    children: [
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    child: Row(
    children: [
    Image.asset(
    'assets/icons/card.png', // Path to the custom icon
    width: 34, // Set the width of the icon
    height: 34, // Set the height of the icon
    ),
    SizedBox(width: 10),
    Text(
    'Add Credit / Debit Cards',
    style: TextStyle(
    fontSize: 18,
    color: Color(0xB8000000),
    ),
    ),
    ],
    ),
    ),
    Divider(thickness: 1, color: Colors.grey[300]), // Divider inside the card
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    child: Row(
    children: [
    Image.asset(
    'assets/icons/pluxee.png', // Path to the custom icon
    width: 34, // Set the width of the icon
    height: 34, // Set the height of the icon
    ),
    SizedBox(width: 10),
    Text(
    'Add Pluxee',
    style: TextStyle(
    fontSize: 18,
    color: Color(0xB8000000),
    ),
    ),
    ],
    ),
    ),
    ],
    ),
    ),
    SizedBox(height: 30), // Space between the first card and "Cards" text
    Center(
    child: Text(
    'U P I',
    style: TextStyle(
    fontSize: 18,
    color: Color(0x59000000),
    ),
    ),
    ),
    SizedBox(height: 10),
    Card(
    color: Colors.white,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.0),
    ),
    child: Column(
    children: [
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    child: Row(
    children: [
    Image.asset(
    'assets/icons/gpay.png', // Path to the custom icon
    width: 34, // Set the width of the icon
    height: 34, // Set the height of the icon
    ),
    SizedBox(width: 10),
    Text(
    'Google Pay UPI',
    style: TextStyle(
    fontSize: 18,
    color: Color(0xB8000000),
    ),
    ),
    ],
    ),
    ),
    Divider(thickness: 1, color: Colors.grey[300]), // Divider inside the card
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    child: Row(
    children: [
    Image.asset(
    'assets/icons/grow.png', // Path to the custom icon
    width: 34, // Set the width of the icon
    height: 34, // Set the height of the icon
    ),
    SizedBox(width: 10),
    Text(
    'Groww UPI',
    style: TextStyle(
    fontSize: 18,
    color: Color(0xB8000000),
    ),
    ),
    ],
    ),
    ),
    Divider(thickness: 1, color: Colors.grey[300]), // Divider inside the card
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    child: Row(
    children: [
    Image.asset(
    'assets/icons/upi.png', // Path to the custom icon
    width: 34, // Set the width of the icon
    height: 34, // Set the height of the icon
    ),
    SizedBox(width: 10),
    Text(
    'Paytm UPI',
    style: TextStyle(
    fontSize: 18,
    color: Color(0xB8000000),
    ),
    ),
    ],
    ),
    ),
    Divider(thickness: 1, color: Colors.grey[300]), // Divider inside the card
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    child: Row(
    children: [
    Image.asset(
    'assets/icons/add.png', // Path to the custom icon
    width: 34, // Set the width of the icon
    height: 34, // Set the height of the icon
    ),
    SizedBox(width: 10),
    Text(
    'Add New UPI ID',
    style: TextStyle(
    fontSize: 18,
    color: Color(0xB8000000),
    ),
    ),
    Spacer(),
    Text(
    'ADD',
    style: TextStyle(
    fontSize: 18,
    color: Colors.red,
    ),
    ),
    ],
    ),
    ),
    ],
    ),
    ),
    SizedBox(height: 30), // Space between the first card and "Cards" text
    Center(
    child: Text(
    'N E T  B A N K I N G',
    style: TextStyle(
    fontSize: 18,
    color: Color(0x59000000),
    ),
    ),
    ),
    SizedBox(height: 10),
    Card(
    color: Colors.white,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.0),
    ),
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    child: Row(
    children: [
    Image.asset(
    'assets/icons/paisa.png', // Path to the custom icon
    width: 34, // Set the width of the icon
    height: 34, // Set the height of the icon
    ),
    SizedBox(width: 10),
    Text(
    'CityCart Money',
    style: TextStyle(
    fontSize: 18,
    color: Color(0xB8000000),
    ),
    ),
    Spacer(),
    Text(
    'ADD',
    style: TextStyle(
    fontSize: 18,
    color: Colors.red,
    ),
    ),
    ],
    ),
    ),
    ),
    SizedBox(height: 30), // Space between the last card and the button
    Center(
    child: Container(
    width: 265,
    height: 50,
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

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Orderconfirmed()), // Replace with your next page widget
      );
    // Handle button press here
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
    ],
    ),
        ),
        ),
          bottomNavigationBar: const MedicineBottomNavbar(),
        ),
    );
  }
}
