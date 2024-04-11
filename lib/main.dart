import 'package:educator/firebase_options.dart';
import 'package:educator/home.dart';
import 'package:educator/page10.dart';
import 'package:educator/page11.dart';
import 'package:educator/page12.dart';
import 'package:educator/page13.dart';
import 'package:educator/page14.dart';
import 'package:educator/page15.dart';
import 'package:educator/page16.dart';
import 'package:educator/page17.dart';
import 'package:educator/page18.dart';
import 'package:educator/page19.dart';
import 'package:educator/page20.dart';
import 'package:educator/page21.dart';
import 'package:educator/page22.dart';
import 'package:educator/page23.dart';
import 'package:educator/page24.dart';
import 'package:educator/page25.dart';
import 'package:educator/page26.dart';
import 'package:educator/page27.dart';
import 'package:educator/page28.dart';
import 'package:educator/page29.dart';
import 'package:educator/page30.dart';
import 'package:educator/page31.dart';
import 'package:educator/page32.dart';
import 'package:educator/page33.dart';
import 'package:educator/page34.dart';
import 'package:educator/page35.dart';
import 'package:educator/page5.dart';
import 'package:educator/page7.dart';
import 'package:educator/page8.dart';
import 'package:educator/page9.dart';
import 'package:educator/page6.dart';
import 'package:educator/singin.dart';
import 'package:educator/singup.dart';
import 'package:educator/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: ScaffoldWithAppBar(
        body: home(),
      ),
    );
  }
}

class ScaffoldWithAppBar extends StatelessWidget {
  final Widget body;

  const ScaffoldWithAppBar({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Educator',
          style: TextStyle(
            color: Color(0xFF0B2348),
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.right,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color(0xFFFFAF0A),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            color: Color(0xFFFFAF0A),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            color: Color(0xFFFFAF0A),
            onPressed: () {
              Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => sing_up()),
                        );
            },
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: body,
    );
  }
}
