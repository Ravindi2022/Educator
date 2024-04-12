import 'package:educator/pdfView.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import url_launcher package

class page10 extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<List<String>> links = [
    [
      'reference link 1',
      'https://stackoverflow.com/questions/43583411/how-to-create-a-hyperlink-in-flutter-widget'
    ],
    ['reference link 2', 'https://example.com/link2'],
    ['reference link 3', 'https://example.com/link3'],
    ['reference link 4', 'https://example.com/link4'],
    ['reference link 5', 'https://example.com/link5'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Text(
                    'Introduction to Computer Science',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    'References',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
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
                            createFileOfPdfUrl(
                                    'https://firebasestorage.googleapis.com/v0/b/educator99-33923.appspot.com/o/Reference%20Links.pdf?alt=media&token=1a8280ce-dfae-462f-9f8a-2c4d6e27e799')
                                .then((f) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        PDFScreen(Path: f.path)),
                              );
                            });
                            // Launch URL on button press
                          },
                          child: Text(
                            link[0],
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
    );
  }
}
