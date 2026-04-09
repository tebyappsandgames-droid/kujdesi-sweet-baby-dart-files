import 'package:flutter/material.dart';

class DoctorCheckupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgrounds/hospital_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Image.asset('assets/characters/hope_ferrer.png', height: 400),
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _tool('assets/medical_tools/thermometer.png'),
                  _tool('assets/medical_tools/bandage.png'),
                  _tool('assets/medical_tools/medicine.png'),
                  _tool('assets/medical_tools/toothbrush.png'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _tool(String path) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Draggable(
        feedback: Image.asset(path, width: 80),
        child: Image.asset(path, width: 60),
      ),
    );
  }
}
