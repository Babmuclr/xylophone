import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  Expanded createButton({int num , Color color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$num.wav');
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.zero,
          minimumSize: Size(50, 30),
          alignment: Alignment.centerLeft,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              createButton(num: 1, color: Colors.red),
              createButton(num: 2, color: Colors.orange),
              createButton(num: 3, color: Colors.yellow),
              createButton(num: 4, color: Colors.lightGreen),
              createButton(num: 5, color: Colors.green),
              createButton(num: 6, color: Colors.blue),
              createButton(num: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
