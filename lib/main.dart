import 'package:flutter/material.dart';

main() => runApp(const PerguntaApp());

//statelesswidget's must don't have var statements!!
class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var selectedanswer = 0;

  void answer() {
    selectedanswer++;
    print(selectedanswer);
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
              title: const Text('Questions'),
              backgroundColor: const Color.fromARGB(210, 0, 0, 0),
            ),
            body: Column(
              children: [
                Text(questions[0]),
                ElevatedButton(
                  onPressed: answer,
                  child: const Text('blue'),
                ),
                ElevatedButton(
                  onPressed: answer,
                  child: const Text('yellow'),
                ),
                ElevatedButton(
                  onPressed: answer,
                  child: const Text('red'),
                ),
              ],
            )));
  }
}
