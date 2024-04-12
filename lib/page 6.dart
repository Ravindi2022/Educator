import 'package:flutter/material.dart';
import 'package:educator/page10.dart';
import 'package:educator/page7.dart';
import 'package:educator/page8.dart';
import 'package:educator/page9.dart';

class page6 extends StatelessWidget {
  const page6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Educator",
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: Stack(
        children: [
          Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                 
                  const Text(
                    'Introduction to Computer Science',
                    style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 70),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => page7()),
                      );
                    },
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFF73C67B),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Text(
                          'Description',
                          style: TextStyle(color: Colors.black, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => page8()),
                      );
                    },
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFF73C67B),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Text(
                          'Short Notes',
                          style: TextStyle(color: Colors.black, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => page9()),
                      );
                    },
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFF73C67B),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Text(
                          ' Questions ',
                          style: TextStyle(color: Colors.black, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => page10()),
                      );
                    },
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFF73C67B),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Text(
                          'References ',
                          style: TextStyle(color: Colors.black, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

