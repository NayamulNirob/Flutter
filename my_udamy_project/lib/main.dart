import 'package:flutter/material.dart';
import 'package:my_udamy_project/app_bar_design.dart';
import 'package:my_udamy_project/flot_button.dart';
import 'package:my_udamy_project/grediant_container.dart';

class MyUdamyProject extends StatefulWidget {
  const MyUdamyProject({super.key});

  @override
  State<MyUdamyProject> createState() => _MyUdamyProjectState();
}

class _MyUdamyProjectState extends State<MyUdamyProject> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBarDesign(),
        body: GrediantContainer([
          Colors.blue,
          Colors.green,
          Colors.yellow,
          Colors.red,
        ]),
        floatingActionButton: FlotButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    ),
  );
}
