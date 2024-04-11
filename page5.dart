import 'package:educator/page11.dart';
import 'package:educator/page16.dart';
import 'package:educator/page21.dart';
import 'package:educator/page26.dart';
import 'package:educator/page31.dart';
import 'package:educator/page6.dart';
import 'package:flutter/material.dart';


class page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body: CourseList(),
      ),
    );
  }
}


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        
        SizedBox(height: 20.0),
        Text(
          'Computer Science',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF00D785),
            fontSize: 24.0,
          ),
        ),
      ],
    );
  }


class CourseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        SemesterHeader('1st Semester'),
        SizedBox(height: 8.0),
        CourseButton('Introduction to Computer Science', () {
          // Navigate to the new page when the button is tapped
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  page6(),
            ),
          );
        }),
        SizedBox(height: 12.0),
        CourseButton('Programming in C', () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => page11(),
            ),
          );
        }),
        SizedBox(height: 12.0),
        CourseButton('Mathematics for Computing', () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  page16(),
            ),
          );
        }),
        SizedBox(height: 12.0),
        CourseButton('Database Management System', () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  page21(),
            ),
          );
        }),
        SizedBox(height: 12.0),
        SemesterHeader('2nd Semester'),
        SizedBox(height: 8.0),
        CourseButton('Algorithms and Data Structures', () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  page26(),
            ),
          );
        }),
        SizedBox(height: 12.0),
        CourseButton('Web Based Application Development', () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  page31(),
            ),
          );
        }),
        SizedBox(height: 12.0),
        CourseButton('Object Oriented Programming with C#', () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  CourseDetailsPage('Object Oriented Programming with C#'),
            ),
          );
        }),
        SizedBox(height: 12.0),
        CourseButton('System Analysis and Design', () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  CourseDetailsPage('System Analysis and Design'),
            ),
          );
        }),
        SizedBox(height: 12.0),
        CourseButton('Computer Architecture', () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CourseDetailsPage('Computer Architecture'),
            ),
          );
        }),
      ],
    );
  }
}

class SemesterHeader extends StatelessWidget {
  final String text;

  SemesterHeader(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
      ),
    );
  }
}

class CourseButton extends StatelessWidget {
  final String courseName;
  final VoidCallback onTap;

  CourseButton(this.courseName, this.onTap);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff093253),
          foregroundColor: Colors.white,
          padding: EdgeInsets.all(16.0),
        ),
        child: Text(
          courseName,
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}

class CourseDetailsPage extends StatelessWidget {
  final String courseName;

  CourseDetailsPage(this.courseName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(courseName),
      ),
      body: Center(
        child: Text(
          'Details for $courseName',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
