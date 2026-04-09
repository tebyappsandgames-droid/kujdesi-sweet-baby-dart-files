import 'package:flutter/material.dart';

class MakeHealthyJuiceScreen extends StatefulWidget {
  const MakeHealthyJuiceScreen({super.key});

  @override
  State<MakeHealthyJuiceScreen> createState() => _MakeHealthyJuiceScreenState();
}

class _MakeHealthyJuiceScreenState extends State<MakeHealthyJuiceScreen> {
  String selectedFruit = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgrounds/make_juice_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _fruit('assets/fruits/orange.png'),
                _fruit('assets/fruits/apple.png'),
                _fruit('assets/fruits/banana.png'),
              ],
            ),
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/items_and_objects/blender.png', height: 250),
                  if (selectedFruit.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: Image.asset(selectedFruit, width: 50),
                    ),
                ],
              ),
            ),
            Image.asset('assets/items_and_objects/juice_empty.png', height: 100),
          ],
        ),
      ),
    );
  }

  Widget _fruit(String path) => GestureDetector(
    onTap: () => setState(() => selectedFruit = path),
    child: Padding(padding: const EdgeInsets.all(10), child: Image.asset(path, width: 60)),
  );
}
