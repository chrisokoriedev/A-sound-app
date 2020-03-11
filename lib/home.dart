import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int soundNUmber, Color color, String soundName}) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playSound(soundNUmber);
          },
          child: Text(
            soundName,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(soundNUmber: 1, color: Colors.brown, soundName: 'Do'),
            buildKey(soundNUmber: 2, color: Colors.green, soundName: 'RE'),
            buildKey(soundNUmber: 3, color: Colors.yellow, soundName: 'MI'),
            buildKey(soundNUmber: 4, color: Colors.redAccent, soundName: 'FA'),
            buildKey(soundNUmber: 5, color: Colors.blue, soundName: 'SO'),
            buildKey(soundNUmber: 6, color: Colors.deepOrange, soundName: 'LA'),
            buildKey(soundNUmber: 7, color: Colors.cyanAccent, soundName: 'TI'),
            buildKey(soundNUmber: 1, color: Colors.purpleAccent, soundName: 'DO'),
          ],
        ),
      ),
    );
  }
}
