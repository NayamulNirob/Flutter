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
       appBar: AppBar(
         centerTitle: true,
         title: Text("Learning",selectionColor: Colors.white,),
         backgroundColor: Colors.amber,
       ),
       body: Center(
         child: Text("Hello world"),
       
       
       ),
       floatingActionButton: FloatingActionButton(onPressed: () =>{},backgroundColor: Colors.blue,child: Icon(Icons.incomplete_circle),
       ), 
      )
    );
  }
}
