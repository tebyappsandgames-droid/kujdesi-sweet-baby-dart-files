import 'package:flutter/material.dart';
import 'activity_selector_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgrounds/home_screen_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 50,
              bottom: 20,
              child: Image.asset(
                'assets/characters/hope_ferrer.png',
                height: 300,
              ),
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ActivitySelectorScreen()),
                  );
                },
                child: Image.asset(
                  'assets/logos_and_buttons/play_button.png', // Supozojmë emrin
                  width: 150,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
