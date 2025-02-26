import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
        body: GrediantContainer(),
        floatingActionButton: FlotButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    ),
  );
}

class GrediantContainer extends StatelessWidget {
  const GrediantContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: <Color>[
            const Color.fromARGB(255, 20, 115, 194),
            const Color.fromARGB(255, 72, 201, 77),
            const Color.fromARGB(255, 245, 255, 0),
            Color.fromARGB(255, 151, 29, 131),
          ],
        ),
      ),
      child: Center(
        child: Text(
          'Hello World',
          style: TextStyle(color: Colors.white, fontSize: 50),
        ),
      ),
    );
  }
}

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


class FlotButton extends StatelessWidget {
  const FlotButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
          onPressed: () => {},

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(children: [Icon(Icons.add), Text('Add')]),
            ],
          ),
        );
        
  }
}