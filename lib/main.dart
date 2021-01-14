import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main(){
  runApp(MyApp());
}

void play_horn(){
  final horn = AudioCache();
  try{
    horn.play('audio/horn.mp3',volume: 100);
  }on Exception catch(e){
    print("Error: $e");
  }
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AirHorn App'),
        ),
        body: Center(
          child: FlatButton(
            child: Image.asset('assets/img/icon.png',height: 150,width:150),
            onPressed: () {
              play_horn();
            },
          ),
        ),
      ),
    );
  }
}