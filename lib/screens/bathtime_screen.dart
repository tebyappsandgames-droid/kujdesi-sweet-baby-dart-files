import 'package:flutter/material.dart';
import 'package:animated_widgets/animated_widgets.dart';

class BathtimeScreen extends StatefulWidget {
  @override
  _BathtimeScreenState createState() => _BathtimeScreenState();
}

class _BathtimeScreenState extends State<BathtimeScreen> {
  bool isSoapApplied = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgrounds/bathroom_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Image.asset('assets/characters/hope_ferrer.png', height: 300),
            ),
            Positioned(
              right: 30,
              top: 50,
              child: Draggable(
                data: 'soap',
                feedback: Image.asset('assets/items_and_objects/bar_of_soap.png', width: 100),
                child: Image.asset('assets/items_and_objects/bar_of_soap.png', width: 80),
              ),
            ),
            DragTarget<String>(
              onAccept: (data) {
                if (data == 'soap') setState(() => isSoapApplied = true);
              },
              builder: (context, candidate, rejected) {
                return Center(
                  child: isSoapApplied 
                    ? Opacity(opacity: 0.5, child: Image.asset('assets/items_and_objects/sponge.png', width: 200))
                    : Container(width: 300, height: 300),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
