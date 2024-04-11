import 'package:educator/home.dart';
import 'package:educator/signin.dart';
import 'package:flutter/material.dart';

class sign_up extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Educator Sign-up',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Educator'),
          backgroundColor: Colors.white, // Customize the color
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign up',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'First name',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Second name',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email address',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Re-enter Password',
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => home()),
                        );
                    // Implement your sign-up logic here
                  },
                  child: Text(
                    'Create account',
                    style: TextStyle(color: Colors.white), // Text color definition
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF50C878),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => sing_in()),
                        );
                      // Implement your sign-in navigation here
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
