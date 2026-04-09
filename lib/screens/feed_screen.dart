import 'package:flutter/material.dart';
import 'make_healthy_juice_screen.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgrounds/kitchen_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 50, bottom: 100,
              child: Image.asset('assets/characters/hope_ferrer.png', height: 400),
            ),
            Positioned(
              right: 20, top: 50,
              child: Column(
                children: [
                  _item('assets/items_and_objects/bowl_of_porridge.png'),
                  _item('assets/items_and_objects/baby_bottle.png'),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MakeHealthyJuiceScreen())),
                    child: Image.asset('assets/buttons/make_healthy_juice_button.png', width: 100),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _item(String path) {
    return Draggable(
      data: path,
      feedback: Image.asset(path, width: 80),
      childWhenDragging: Opacity(opacity: 0.5, child: Image.asset(path, width: 80)),
      child: Image.asset(path, width: 80),
    );
  }
}
