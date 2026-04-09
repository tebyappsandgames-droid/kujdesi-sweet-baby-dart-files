import 'package:flutter/material.dart';

class DressUpScreen extends StatefulWidget {
  const DressUpScreen({super.key});

  @override
  State<DressUpScreen> createState() => _DressUpScreenState();
}

class _DressUpScreenState extends State<DressUpScreen> {
  String currentShirt = '';
  String currentHat = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgrounds/dressing_room_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/characters/hope_ferrer.png', height: 400),
                  if (currentShirt.isNotEmpty) Positioned(top: 150, child: Image.asset(currentShirt, width: 150)),
                  if (currentHat.isNotEmpty) Positioned(top: 50, child: Image.asset(currentHat, width: 100)),
                ],
              ),
            ),
            Positioned(
              left: 10, top: 100,
              child: Column(
                children: [
                  _item('assets/shirts/blue_shirt.png', true),
                  _item('assets/shirts/green_shirt.png', true),
                  _item('assets/hats/santa_claus_hat.png', false),
                  _item('assets/hats/cap_hat.png', false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _item(String path, bool isShirt) => GestureDetector(
    onTap: () => setState(() => isShirt ? currentShirt = path : currentHat = path),
    child: Padding(padding: const EdgeInsets.all(8.0), child: Image.asset(path, width: 70)),
  );
}
