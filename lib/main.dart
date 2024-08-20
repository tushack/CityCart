import 'package:citycart/Page/Food/HomeScreen.dart';
import 'package:citycart/Page/SplashScreen.dart';
import 'package:citycart/Page/startedScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Disable the debug banner
      theme: ThemeData(
        //colorScheme: ColorScheme.timefromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: HomeScreen(),
      home: Splash2(),
    );
  }
}
