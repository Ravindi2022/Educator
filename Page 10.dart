import 'package:flutter/material.dart';


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
  final List<String> links = [
    'reference link 1',
    'reference link 2', // Added a space after "link"
    'reference link 3',
    'reference link 4',
    'reference link 5', 
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
                                textAlign: TextAlign.center, style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold ),
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
                            // Handle link tap here
                          },
                          child: Text(
                            link,
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
