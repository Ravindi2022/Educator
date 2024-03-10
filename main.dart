import 'package:flutter/material.dart';

void main() {
  runApp(EducatorApp());
}

class EducatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Educator',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Educator'),
      ),
      body: Center(
        child: Text(
          'Welcome to Educator!',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
