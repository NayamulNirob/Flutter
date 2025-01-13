import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar( 
          backgroundColor: Colors.tealAccent, 
          title: Center(child: Text("App Bar")),
      ), 
        body:Center( child: Text("Body",
          style: TextStyle(fontSize: 150,color: Colors.teal),)),
        floatingActionButton: FloatingActionButton(
          onPressed: ()=>{},
          backgroundColor: Colors.blueAccent,
          child: Icon(Icons.ac_unit,color: Colors.amber,),
        ),
    ),
    );

  }
}
