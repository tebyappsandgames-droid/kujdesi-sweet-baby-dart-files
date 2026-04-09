import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'home_screen.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    super.initState();
    // Kalojmë te Home Screen pas 4 sekondave
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgrounds/intro_background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Lottie.asset(
              'assets/animations/amar_kids_games_intro.json',
              width: 300,
              height: 300,
            ),
          ),
        ],
      ),
    );
  }
}
