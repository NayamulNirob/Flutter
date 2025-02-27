
import 'package:flutter/material.dart';


class TextInput extends StatelessWidget {
  const TextInput({required this.textInput, super.key});

  final String textInput;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(textInput, style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w300, color: Color.fromARGB(255, 16, 1, 58))),
    );
  }
}
