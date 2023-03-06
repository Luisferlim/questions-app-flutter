import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(const PerguntaApp());

//the _ before classes and var's mean basically private'
class _PerguntaAppState extends State<PerguntaApp> {
  var _selectedanswer = 0;

  void _answer() {
    setState(() {
      _selectedanswer++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
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
                Question(questions[_selectedanswer]),
                ElevatedButton(
                  onPressed: _answer,
                  child: const Text('answer 1'),
                ),
                ElevatedButton(
                  onPressed: _answer,
                  child: const Text('answer 2'),
                ),
                ElevatedButton(
                  onPressed: _answer,
                  child: const Text('answer 3'),
                ),
              ],
            )));
  }
}

//statelesswidget's must don't have var statements!!
class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}
