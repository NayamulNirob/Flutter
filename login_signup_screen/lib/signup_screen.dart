import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', height: 100),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(labelText: 'Enter your email address'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Enter your phone number'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Surname'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Date of Birth'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Create Password'),
              obscureText: true,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Repeat Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/list');
              },
              style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50)),
              child: Text('Sign up'),
            ),
          ],
        ),
      ),
    );
  }
}