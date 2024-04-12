import 'package:educator/pdfview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class page8 extends StatelessWidget {
  const page8({super.key});

  @override
  Widget build(BuildContext context) {
    String PDFpath = "";
    return MaterialApp(
      title: "educator",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Text(
                  'Introduction to Computer Science',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                ImageButton(
                  onPressed: () {
                    createFileOfPdfUrl(
                            'https://firebasestorage.googleapis.com/v0/b/educator99-33923.appspot.com/o/Example%20for%20lesson.pdf?alt=media&token=2987a863-1a51-4037-995e-259e60381a88')
                        .then((f) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(Path: f.path)),
                      );
                    });
                  },
                  image: const AssetImage('assets/freestock_574456060.jpg'),
                  width: 200.0,
                  height: 200.0,
                ),
                const Text(
                  'short note 1',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w200),
                ),
                const SizedBox(height: 20),
                ImageButton(
                  onPressed: () {
                    createFileOfPdfUrl(
                            'https://firebasestorage.googleapis.com/v0/b/educator99-33923.appspot.com/o/Example%20for%20lesson.pdf?alt=media&token=2987a863-1a51-4037-995e-259e60381a88')
                        .then((f) {
                      PDFpath = f.path;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(Path: f.path)),
                      );
                    });
                  },
                  image: const AssetImage('assets/freestock_574456060.jpg'),
                  width: 200.0,
                  height: 200.0,
                ),
                const Text(
                  'short note 2',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w200),
                ),
                const SizedBox(height: 20),
                ImageButton(
                  onPressed: () {
                    createFileOfPdfUrl(
                            'https://firebasestorage.googleapis.com/v0/b/educator99-33923.appspot.com/o/Example%20for%20lesson.pdf?alt=media&token=2987a863-1a51-4037-995e-259e60381a88')
                        .then((f) {
                      PDFpath = f.path;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(Path: f.path)),
                      );
                    });
                  },
                  image: const AssetImage('assets/freestock_574456060.jpg'),
                  width: 200.0,
                  height: 200.0,
                ),
                const Text(
                  'short note 3',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w200),
                ),
                const SizedBox(height: 20), // Adjust spacing as needed
                ImageButton(
                  onPressed: () {
                    createFileOfPdfUrl(
                            'https://firebasestorage.googleapis.com/v0/b/educator99-33923.appspot.com/o/Example%20for%20lesson.pdf?alt=media&token=2987a863-1a51-4037-995e-259e60381a88')
                        .then((f) {
                      PDFpath = f.path;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(Path: f.path)),
                      );
                    });
                  },
                  image: const AssetImage('assets/freestock_574456060.jpg'),
                  width: 200.0,
                  height: 200.0,
                ),
                const Text(
                  'short note 4',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w200),
                ),
                const SizedBox(height: 20), // Adjust spacing as needed
                ImageButton(
                  onPressed: () {
                    createFileOfPdfUrl(
                            'https://firebasestorage.googleapis.com/v0/b/educator99-33923.appspot.com/o/Example%20for%20lesson.pdf?alt=media&token=2987a863-1a51-4037-995e-259e60381a88')
                        .then((f) {
                      PDFpath = f.path;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(Path: f.path)),
                      );
                    });
                  },
                  image: const AssetImage('assets/freestock_574456060.jpg'),
                  width: 200.0,
                  height: 200.0,
                ),
                const Text(
                  'short note 5',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w200),
                ),
                const SizedBox(height: 20), // Adjust spacing as needed
                ImageButton(
                  onPressed: () {
                    createFileOfPdfUrl(
                            'https://firebasestorage.googleapis.com/v0/b/educator99-33923.appspot.com/o/Example%20for%20lesson.pdf?alt=media&token=2987a863-1a51-4037-995e-259e60381a88')
                        .then((f) {
                      PDFpath = f.path;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(Path: f.path)),
                      );
                    });
                  },
                  image: const AssetImage('assets/freestock_574456060.jpg'),
                  width: 200.0,
                  height: 200.0,
                ),
                const Text(
                  'short note 6',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w200),
                ),
                const SizedBox(height: 20), // Adjust spacing as needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ImageButton extends StatelessWidget {
  final VoidCallback onPressed;
  final ImageProvider image;
  final double width;
  final double height;

  const ImageButton({
    required this.onPressed,
    required this.image,
    this.width = 100.0,
    this.height = 50.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Material(
        child: InkWell(
          onTap: onPressed,
          child: Image(
            image: image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


