import 'package:flutter/material.dart';
import 'package:login_signup_screen/list_screen.dart';
import 'package:login_signup_screen/login_screen.dart';
import 'package:login_signup_screen/signup_screen.dart';


class Routing extends StatelessWidget {
  const Routing({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
        '/list': (context) => ListScreen(),
      },
    );
  }
}