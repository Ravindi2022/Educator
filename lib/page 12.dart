import 'package:flutter/material.dart';

class page12 extends StatelessWidget {
  const page12({super.key});

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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Introduction to Computer Science',
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
                            buildPoint('Programming in C typically starts with learning the basic syntax and semantics of the language. This includes understanding concepts such as variables, data types, operators, control structures (such as loops and conditional statements), functions, and arrays.'),
                            buildPoint('Students will grasp the fundamental principles of C programming, including syntax, data types, variables, and control structures, laying a strong groundwork for advanced topics.'),
                            buildPoint('Through hands-on exercises, learners will become proficient in managing memory dynamically and utilizing pointers effectively, essential skills for optimizing program performance and implementing data structures.'),
                            buildPoint(' Participants will learn to harness the extensive functionality provided by the C standard library, enabling them to perform common tasks such as input/output operations, string manipulation, and mathematical computations with ease and efficiency.'),
                            buildPoint('The course covers essential file input/output operations, including opening, reading from, writing to, and closing files. Students will also explore error handling techniques to ensure robust file operations in real-world applications.'),
                            buildPoint('Through a series of hands-on projects and assignments, students will apply their knowledge to solve real-world problems, gaining valuable experience and honing their programming skills in preparation for future endeavors in software development and engineering.'),
                          ],
                        ),
                      
                    ),
                  ),
                
              ),
            ],
          ),
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
