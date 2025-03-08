import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen({super.key,required this.choosenAnswer });

  final List<String> choosenAnswer;
  
  // final dynamic resetQuiz;

  @override
  Widget build(BuildContext context){
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('You did it! Your score is '),
              SizedBox(height: 30,),
              Text('List Of Answer and questions'),
              SizedBox(height: 30,),
              ElevatedButton(
                onPressed: (){},
                child: Text('Restart Quiz'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}