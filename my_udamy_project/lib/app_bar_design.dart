import 'package:flutter/material.dart';

class AppBarDesign extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  const AppBarDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.tealAccent,
      centerTitle: true,

      title: Padding(
        padding: EdgeInsets.only(top: 11.0),
        child: Text(
          'New App',
          style: TextStyle(color: Colors.deepOrangeAccent),
        ),
      ),
    );
  }
}