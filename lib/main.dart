import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void playMusic({int? soundNumber}){
    AudioPlayer player = AudioPlayer();
    player.play(AssetSource(
        'audios/assets_note$soundNumber.wav'
    ),);
  }
/*
  AssetSource(
  'audios/assets_note$soundNumber.wav'
  ),
*/

  Expanded getMusicButton({Color? color, int? soundNumber}) {
    return Expanded(
      child: Container(
          color: color,
          child: InkWell(
            onTap: () {
              playMusic(soundNumber:soundNumber);
            },
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                getMusicButton(soundNumber: 1,color: Colors.black),
                getMusicButton(color: Colors.red,soundNumber: 2),
                getMusicButton(color: Colors.yellow,soundNumber: 3),
                getMusicButton(color: Colors.grey,soundNumber: 4),
                getMusicButton(color: Colors.greenAccent,soundNumber: 5),
                getMusicButton(color: Colors.lightGreen,soundNumber: 6),
                getMusicButton(color: Colors.deepOrangeAccent,soundNumber: 7),
              ],
            ),
          ),
        ));
  }
}
