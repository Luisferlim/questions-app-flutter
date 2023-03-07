import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
      {
        'text': 'what\'s your favorite color?',
        'answers': ['yellow', 'red', 'blue', 'green'],
      },
      {
        'text': 'which of those is your favorite animal?',
        'answers': ['capybara', 'cat', 'fox', 'dog'],
      },
      {
        'text': 'which of those is your favorite car?',
        'answers': ['Monza', 'Supra', 'Beetle', 'Tesla model s'],
      },
    ];

    return MaterialApp(
        //here we got the named parameters
        home: Scaffold(
            appBar: AppBar(
              title: const Center(child: Text('Questions')),
              backgroundColor: Colors.blueAccent,
            ),
            body: Column(
              children: [
                Question(questions[_selectedanswer]['text'] as String),
                Answer('answer 1', _answer),
                Answer('answer 2', _answer),
                Answer('answer 3', _answer),
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
