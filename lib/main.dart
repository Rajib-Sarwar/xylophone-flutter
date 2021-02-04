import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playNote(int number) {
    final audioPlayer = AudioCache();
    audioPlayer.play('note$number.wav');
  }

  Expanded buildNote({int noteNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playNote(noteNumber);
        },
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
            children: <Widget>[
              buildNote(noteNumber: 1, color: Colors.red),
              buildNote(noteNumber: 2, color: Colors.orange),
              buildNote(noteNumber: 3, color: Colors.yellow),
              buildNote(noteNumber: 4, color: Colors.green),
              buildNote(noteNumber: 5, color: Colors.teal),
              buildNote(noteNumber: 6, color: Colors.blue),
              buildNote(noteNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
