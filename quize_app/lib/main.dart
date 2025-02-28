import 'package:flutter/material.dart';
import 'package:quize_app/body_quiz.dart';
import 'package:quize_app/design_app_bar.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: DesignAppBar(),
        body: BodyQuiz(),
      ),
    ),
  );
}
