import 'package:flutter/material.dart';

class page17 extends StatelessWidget {
  const page17({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "educator",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Educator',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Color(0xFF0B2348),
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Mathematics for Computing',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold ),
            ),
            SizedBox(height: 30, width: 30.0,), 
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFF0B2348),
                      width: 4.0,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildPoint('A broad and robust understanding of computer science and programming.'),
                      buildPoint('How to think algorithmically and solve programming problems efficiently.'),
                      buildPoint('Concepts like abstraction, algorithms, data structures, encapsulation, resource management, security, software engineering, and web development.'),
                      buildPoint('Familiarity with a number of languages, including C, Python, SQL, and JavaScript plus CSS and HTML.'),
                      buildPoint('How to engage with a vibrant community of like-minded learners from all levels of experience.'),
                      buildPoint('How to develop and present a final programming project to your peers.'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '• ',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Text(
              text,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
