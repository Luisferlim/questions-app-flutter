import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String texto;

  const Question(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(texto);
  }
}
