import 'package:flutter/material.dart';
import 'package:quize_app/answer_btn.dart';
import 'package:quize_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {

  final currentQuestion=questions[0];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10, // Horizontal space between button

        children: [
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pop(
          //       context,
          //       MaterialPageRoute(builder: (context) => ),
          //     );
          //   },
          //   child: Text(
          //     'Go to previous Screen',
          //   ),
          // ),
          Text(currentQuestion.text,style: TextStyle(color: Colors.white),),
          SizedBox(height: 30),
          AnswerBtn(ontab: () {  }, answerText: currentQuestion.answers[0], ),
          AnswerBtn(answerText: currentQuestion.answers[1], ontab: (){}),
          AnswerBtn(answerText: currentQuestion.answers[2], ontab: (){}),
          AnswerBtn(answerText: currentQuestion.answers[3], ontab: (){}),
        ],
      ),
    );
  }
}
