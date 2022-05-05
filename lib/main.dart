import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Xylophone"),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          backgroundColor: Colors.black,
          body: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              playSound(1, Colors.red),
              playSound(2, Colors.orange),
              playSound(3, Colors.yellow),
              playSound(4, Colors.green),
              playSound(5, Color.fromARGB(255, 22, 88, 27)),
              playSound(6, Colors.blue),
              playSound(7, Colors.purple),
            ],
          )),
        ));
  }
}

playSound(int note, Color col) {
  return Expanded(
    child: Card(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: col),
        onPressed: () {
          final player = AudioCache();
          player.play('note$note.wav');
        },
        child: Text(""),
      ),
    ),
  );
}
