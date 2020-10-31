import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Xilòfon',
            style: TextStyle(fontSize: 30.0, letterSpacing: 3.0),
          ),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(child: playSound(num: 1, color: Colors.red)),
              Expanded(child: playSound(num: 2, color: Colors.orange)),
              Expanded(child: playSound(num: 3, color: Colors.yellow)),
              Expanded(child: playSound(num: 4, color: Colors.green)),
              Expanded(child: playSound(num: 5, color: Colors.teal)),
              Expanded(child: playSound(num: 6, color: Colors.blue)),
              Expanded(child: playSound(num: 7, color: Colors.purple)),
            ],
          ),
        ),
      ),
    );
  }
}

Widget playSound({num, color}) {
  return FlatButton(
    color: color,
    onPressed: () {
      final player = AudioCache();
      player.play('note$num.wav');
    },
    child: null,
  );
}
