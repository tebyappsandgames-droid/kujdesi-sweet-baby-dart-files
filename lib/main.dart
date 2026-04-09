import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/intro_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Bllokojmë orientimin në Landscape për një eksperiencë loje më të mirë
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(KujdesiSweetBabyApp());
}

class KujdesiSweetBabyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kujdesi Sweet Baby',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'ChalkboardSE', // Duke përdorur fontin tuaj
        primarySwatch: Colors.pink,
      ),
      home: IntroScreen(),
    );
  }
}
