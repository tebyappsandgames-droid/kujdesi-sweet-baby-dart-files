import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class BedtimeScreen extends StatefulWidget {
  const BedtimeScreen({super.key});

  @override
  State<BedtimeScreen> createState() => _BedtimeScreenState();
}

class _BedtimeScreenState extends State<BedtimeScreen> {
  final player = AudioPlayer();
  bool isPlaying = false;

  void toggleMusic() async {
    if (isPlaying) {
      await player.stop();
    } else {
      await player.play(AssetSource('radio_audio/tabtale_hush_little_baby.mp3'));
    }
    setState(() => isPlaying = !isPlaying);
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgrounds/bedroom_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Center(child: Image.asset('assets/characters/hope_ferrer.png', height: 300)),
            Positioned(
              bottom: 50, right: 50,
              child: IconButton(
                iconSize: 100,
                icon: Image.asset('assets/items_and_objects/radio.png'),
                onPressed: toggleMusic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
