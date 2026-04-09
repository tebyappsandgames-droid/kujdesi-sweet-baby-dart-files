import 'package:flutter/material.dart';
import 'screens/intro_screen.dart';

void main() {
  runApp(const SweetBabyCareApp());
}

class SweetBabyCareApp extends StatelessWidget {
  const SweetBabyCareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kujdesi Sweet Baby',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'ChalkboardSE', // Duke përdorur fontin tuaj
        primarySwatch: Colors.pink,
      ),
      home: const IntroScreen(),
    );
  }
}
