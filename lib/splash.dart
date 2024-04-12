import 'package:flutter/material.dart';

class splash_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              left: -33, 
              top: 63,
              child: Container(
                width: 94,
                height: 99,
                decoration: BoxDecoration(
                  color: Color(0xFF29315D),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              left: 72,
              top: 151,
              child: Container(
                width: 23,
                height: 23,
                decoration: BoxDecoration(
                  color: Color(0xFF29315D),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              left: 49,
              top: 304,
              child: Text(
                'Welcome!',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  fontSize: 64,
                  color: Color(0xFF456D8B),
                ),
              ),
            ),
            Positioned(
              left: 24,
              top: 466,
              child: Container(
                width: 312,
                height: 321,
                decoration: BoxDecoration(
                  color: Color(0xFF73C67B),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              left: 44,
              top: 500,
              child: Container(
                width: 273,
                height: 253,
                decoration: BoxDecoration(
                  color: Color(0xFF29315D),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              left: 336,
              top: 828,
              child: Container(
                width: 119,
                height: 115,
                decoration: BoxDecoration(
                  color: Color(0xFF73C67B),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              left: 295,
              top: 869,
              child: Container(
                width: 18,
                height: 16,
                decoration: BoxDecoration(
                  color: Color(0xFF73C67B),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
