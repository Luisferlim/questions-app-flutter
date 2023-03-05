import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  PerguntaApp({super.key});

  void answer() {
    print('it\'s answered!');
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      'what\'s your favorite color?',
      'which of those do you prefer?',
    ];

    return MaterialApp(
        //here we got the named parameters
        home: Scaffold(
            appBar: AppBar(
              title: Text('Questions'),
              backgroundColor: Color.fromARGB(210, 34, 117, 31),
            ),
            body: Column(
              children: [
                Text(questions[0]),
                ElevatedButton(
                  child: Text('blue'),
                  onPressed: answer,
                ),
                ElevatedButton(
                  child: Text('yellow'),
                  onPressed: answer,
                ),
                ElevatedButton(
                  child: Text('red'),
                  onPressed: answer,
                ),
              ],
            )));
  }
}
