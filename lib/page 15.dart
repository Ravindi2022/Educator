import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import the url_launcher package

class Page15 extends StatelessWidget {
  final List<Map<String, String>> links = [
    {'title': 'Reference link 1', 'url': 'https://stackoverflow.com/questions/43583411/how-to-create-a-hyperlink-in-flutter-widget'},
    {'title': 'Reference link 2', 'url': 'https://www.example.com/link2'},
    {'title': 'Reference link 3', 'url': 'https://www.example.com/link3'},
    {'title': 'Reference link 4', 'url': 'https://www.example.com/link4'},
    {'title': 'Reference link 5', 'url': 'https://www.example.com/link5'},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Programming in C'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'References',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  ...links
                      .map(
                        (link) => Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: OutlinedButton(
                            style: ButtonStyle(
                              side: MaterialStateProperty.all(
                                BorderSide(color: Colors.green),
                              ),
                            ),
                            onPressed: () {
                              _launchURL(link['url']!); // Launch URL when button is pressed
                            },
                            child: Text(
                              link['title']!,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Function to launch URL
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

void main() {
  runApp(Page15());
}
