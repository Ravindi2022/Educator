import 'package:educator/page32.dart';
import 'package:educator/page33.dart';
import 'package:educator/page34.dart';
import 'package:educator/page35.dart';
import 'package:flutter/material.dart';

class page31 extends StatelessWidget {
const page31({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Educator",
      home: Stack(
        children: [
           
          Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Text(
                'Educator',
                style: TextStyle(
                  color: Color(0xFF0B2348),
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                    'Web Based Application Development',
                    style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => page32()),
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
                        MaterialPageRoute(builder: (context) => page33()),
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
                    onTap: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => page34()),
                      );},
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFF73C67B),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Text(
                          'Questions',
                          style: TextStyle(color: Colors.black, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => page35()),
                      );},
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFF73C67B),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Text(
                          'References',
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
