import 'package:flutter/material.dart';
import 'package:animated_widgets/animated_widgets.dart';

class PlaytimeScreen extends StatelessWidget {
  const PlaytimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgrounds/playroom_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Center(child: Image.asset('assets/characters/hope_ferrer.png', height: 350)),
            Positioned(
              bottom: 100, left: 50,
              child: ShakeAnimatedWidget(
                enabled: true,
                duration: const Duration(milliseconds: 1500),
                shakeAngle: Rotation.deg(z: 10),
                child: Image.asset('assets/toys/ball.png', width: 80),
              ),
            ),
            Positioned(
              bottom: 100, right: 50,
              child: Image.asset('assets/toys/drum.png', width: 100),
            ),
          ],
        ),
      ),
    );
  }
}
