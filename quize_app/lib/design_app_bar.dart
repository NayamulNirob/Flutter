import 'package:flutter/material.dart';

class DesignAppBar extends StatelessWidget implements PreferredSizeWidget {
   const DesignAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 124, 226, 83),
      title: Text(
        'Flutter Quize App',
        style: TextStyle(color: const Color.fromARGB(255, 110, 2, 105)),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  
  
  

}
