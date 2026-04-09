import 'package:flutter/material.dart';

class DoctorCheckupScreen extends StatelessWidget {
  const DoctorCheckupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgrounds/hospital_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Expanded(child: Image.asset('assets/characters/hope_ferrer.png')),
            Container(
              height: 120,
              color: Colors.white.withOpacity(0.5),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _tool('assets/medical_tools/thermometer.png'),
                  _tool('assets/medical_tools/bandage.png'),
                  _tool('assets/medical_tools/medicine.png'),
                  _tool('assets/medical_tools/sprayer.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tool(String path) => Padding(
    padding: const EdgeInsets.all(8.0),
    child: Image.asset(path, width: 80),
  );
}
