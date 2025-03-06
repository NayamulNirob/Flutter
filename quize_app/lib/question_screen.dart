import 'package:flutter/material.dart';
import 'package:quize_app/answer_btn.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
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
          Text('Questions....',style: TextStyle(color: Colors.white),),
          SizedBox(height: 30),
          AnswerBtn(ontab: () {  }, answerText: 'Answer 1', ),
          AnswerBtn(answerText: 'Answer 2', ontab: (){}),
          AnswerBtn(answerText: 'Answer 3', ontab: (){}),
        ],
      ),
    );
  }
}
