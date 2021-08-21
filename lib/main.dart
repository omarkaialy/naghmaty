import 'package:audioplayers/audio_cache.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioCache player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('naghmat'),
          backgroundColor: Colors.purple[700],
        ),
        body: Column(
          children: [
            button('Samsung Galaxy', Color.fromARGB(100, 255, 0, 0), 1),
            button('Samsung Note', Colors.blue, 2),
            button('iPhone ', Colors.green, 3),
            button('Nokia', Colors.black, 4),
            button('Xiaomi', Colors.pink, 5),
            button('Samsung S7', Colors.brown, 6),
            button('Huawei', Colors.orange, 7)
          ],
        ),
        backgroundColor: Colors.purple[100],
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  void playsound(int i) {
    player.play('note$i.mp3');
  }

  Expanded button(String name, Color colors, int x) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: ElevatedButton(
          onPressed: () {
            playsound(x);
          },
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Icon(
                  Icons.music_note_rounded,
                  color: colors,
                ),
              ),
              Text(
                name,
                style: TextStyle(color: colors),
              )
            ],
          ),
        ),
      ),
    );
  }
}
