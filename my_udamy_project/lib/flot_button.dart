import 'package:flutter/material.dart';

class FlotButton extends StatelessWidget {
  const FlotButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => {},

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Icon(Icons.home),
         Text('Home')
        ],
      ),
    );
  }
}
