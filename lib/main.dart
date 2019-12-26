import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber, String b}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(soundNumber);
        }, child: Text(
              '$b',
                      style: TextStyle(
              color: Colors.white,
                        fontSize: 30.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
      ),
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
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1, b: 'do'),
              buildKey(color: Colors.orange, soundNumber: 1,b: 're'),
              buildKey(color: Colors.yellow, soundNumber: 3,b: 'mi'),
              buildKey(color: Colors.green, soundNumber: 4, b: 'fa'),
              buildKey(color: Colors.teal, soundNumber: 5, b: 'so'),
              buildKey(color: Colors.blue, soundNumber: 6, b: 'lya'),
              buildKey(color: Colors.purple, soundNumber: 7, b: 'si'),
            ],
          ),
        ),
      ),
    );
  }
}
