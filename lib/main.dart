import 'package:booking_app_design/view/screens/about_screen.dart';
import 'package:booking_app_design/view/screens/home_screen.dart';
import 'package:booking_app_design/view/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BookingApp());
}

class BookingApp extends StatelessWidget {
  const BookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const OnBoardingScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Ubuntu",
      ),
      routes: {
        "Home Screen": (context) => const HomeScreen(),
        "About Screen": (context) => const AboutScreen(),
      },
    );
  }
}
