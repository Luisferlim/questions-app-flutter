import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answertext;
  final void Function() onSelect;

  const Answer(this.answertext, this.onSelect, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),
        onPressed: onSelect,
        child: Text(answertext),
      ),
    );
  }
}
