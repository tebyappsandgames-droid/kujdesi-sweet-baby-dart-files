import 'package:flutter/material.dart';
import 'make_healthy_juice_screen.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  bool isFeeding = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgrounds/kitchen_background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            right: 100,
            bottom: 50,
            child: Image.asset('assets/characters/hope_ferrer.png', height: 350),
          ),
          // Rafti i ushqimeve
          Positioned(
            left: 20,
            top: 100,
            child: Column(
              children: [
                Draggable(
                  data: 'porridge',
                  feedback: Image.asset('assets/items_and_objects/bowl_of_porridge.png', width: 100),
                  child: Image.asset('assets/items_and_objects/bowl_of_porridge.png', width: 80),
                ),
                SizedBox(height: 10),
                IconButton(
                  icon: Image.asset('assets/buttons/make_healthy_juice_button.png'),
                  iconSize: 100,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MakeHealthyJuiceScreen()));
                  },
                ),
              ],
            ),
          ),
          DragTarget<String>(
            onAccept: (data) {
              setState(() { isFeeding = true; });
              Future.delayed(Duration(seconds: 2), () => setState(() => isFeeding = false));
            },
            builder: (context, candidateData, rejectedData) {
              return Positioned(
                right: 150,
                bottom: 250,
                child: Container(width: 100, height: 100, color: Colors.transparent),
              );
            },
          ),
        ],
      ),
    );
  }
}
