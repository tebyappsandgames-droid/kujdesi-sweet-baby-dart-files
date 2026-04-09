import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class BedtimeScreen extends StatefulWidget {
  @override
  _BedtimeScreenState createState() => _BedtimeScreenState();
}

class _BedtimeScreenState extends State<BedtimeScreen> {
  final AudioPlayer _player = AudioPlayer();
  bool isPlaying = false;

  void _toggleMusic() async {
    if (isPlaying) {
      await _player.stop();
    } else {
      await _player.play(AssetSource('radio_audio/tabtale_hush_little_baby.mp3'));
    }
    setState(() { isPlaying = !isPlaying; });
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgrounds/bedroom_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 200,
              bottom: 100,
              child: Image.asset('assets/characters/hope_ferrer.png', height: 200),
            ),
            Positioned(
              left: 50,
              top: 50,
              child: GestureDetector(
                onTap: _toggleMusic,
                child: Image.asset('assets/items_and_objects/radio.png', width: 100),
              ),
            ),
            if (isPlaying) 
              Positioned(
                left: 70, top: 20,
                child: Icon(Icons.music_note, color: Colors.white, size: 40),
              ),
          ],
        ),
      ),
    );
  }
}
