import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: const Text("First Flutter",
          style: TextStyle(
            color: Colors.white
          ),
          ),

        ),
        body:const Center(child: Text("Hello World")),

        floatingActionButton:FloatingActionButton (onPressed: () => {},
          child: Icon(Icons.thumb_up_alt,color: Colors.amber,),
        ),
      ),
    );
  }
}
