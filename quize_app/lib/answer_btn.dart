import 'package:flutter/material.dart';

class AnswerBtn extends StatelessWidget {
  const AnswerBtn({super.key, required this.answerText, required this.ontab});

  final String answerText;

  final void Function() ontab;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontab,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 9, 1, 119),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      ),
      child: Text(answerText, textAlign: TextAlign.center,style: TextStyle(fontSize: 15.5),),
    );
  }
}
