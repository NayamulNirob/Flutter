import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List')), 
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item \$index'),
            subtitle: Text('Detail for item \$index'),
            trailing: Text('1 meal'),
          );
        },
      ),
    );
  }
}
