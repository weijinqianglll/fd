import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XyloPhone extends StatelessWidget {
  const XyloPhone({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('bgm$soundNumber.mp3');
  }

  Widget buildKey({required Color color, required int soundNumber}) {
    return TextButton(
      style: TextButton.styleFrom(backgroundColor: color),
      onPressed: () {
        playSound(soundNumber);
      },
      child: const Text('good', style: TextStyle(color: Colors.white)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('背景音乐'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            buildKey(color: Colors.grey, soundNumber: 1),
            buildKey(color: Colors.blue, soundNumber: 2),
            buildKey(color: Colors.pink, soundNumber: 3),
            buildKey(color: Colors.green, soundNumber: 4),
          ],
        ),
      ),
    );
  }
}
