import 'package:flutter/material.dart';

class BathtimeScreen extends StatelessWidget {
  const BathtimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgrounds/bathroom_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset('assets/characters/hope_ferrer.png', height: 350),
              Positioned(
                bottom: 20,
                child: Row(
                  children: [
                    Image.asset('assets/items_and_objects/bar_of_soap.png', width: 60),
                    Image.asset('assets/items_and_objects/baby_shampoo.png', width: 60),
                    Image.asset('assets/items_and_objects/sponge.png', width: 60),
                    Image.asset('assets/items_and_objects/rubber_duck.png', width: 60),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
