import 'package:educator/pdfView.dart';
import 'package:flutter/material.dart';

class page9 extends StatelessWidget {
  const page9({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "educator",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Introduction to Computer Science',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                  width: 30,
                ),

                ImageButton(
                  onPressed: () {
                    createFileOfPdfUrl(
                            'https://firebasestorage.googleapis.com/v0/b/educator99-33923.appspot.com/o/Example%20for%20questions.pdf?alt=media&token=afef28ec-0633-4a3f-8bd8-6669da8914d6')
                        .then((f) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(Path: f.path)),
                      );
                    });
                  },
                  image: const AssetImage('assets/lesson.jpg'),
                  width: 300.0,
                  height: 165.0,
                ),
                const Text(
                  'lesson 1',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w200),
                ),
                const SizedBox(height: 20),
                ImageButton(
                  onPressed: () {
                    createFileOfPdfUrl(
                            'https://firebasestorage.googleapis.com/v0/b/educator99-33923.appspot.com/o/Example%20for%20questions.pdf?alt=media&token=afef28ec-0633-4a3f-8bd8-6669da8914d6')
                        .then((f) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(Path: f.path)),
                      );
                    });
                  },
                  image: const AssetImage('assets/lesson.jpg'),
                  width: 300.0,
                  height: 165.0,
                ),
                const Text(
                  'lesson 2',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w200),
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
                  image: const AssetImage('assets/lesson.jpg'),
                  width: 300.0,
                  height: 165.0,
                ),
                const Text(
                  'lesson 3',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w200),
                ),
                const SizedBox(height: 20),

                ImageButton(
                  onPressed: () {
                    createFileOfPdfUrl(
                            'https://firebasestorage.googleapis.com/v0/b/educator99-33923.appspot.com/o/Example%20for%20questions.pdf?alt=media&token=afef28ec-0633-4a3f-8bd8-6669da8914d6')
                        .then((f) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(Path: f.path)),
                      );
                    });
                  },
                  image: const AssetImage('assets/lesson.jpg'),
                  width: 300.0,
                  height: 165.0,
                ),
                const Text(
                  'lesson 4',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w200),
                ),
                const SizedBox(height: 20), // Adjust spacing as needed
                ImageButton(
                  onPressed: () {
                    createFileOfPdfUrl(
                            'https://firebasestorage.googleapis.com/v0/b/educator99-33923.appspot.com/o/Example%20for%20questions.pdf?alt=media&token=afef28ec-0633-4a3f-8bd8-6669da8914d6')
                        .then((f) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(Path: f.path)),
                      );
                    });
                  },
                  image: const AssetImage('assets/lesson.jpg'),
                  width: 300.0,
                  height: 165.0,
                ),
                const Text(
                  'lesson 5',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w200),
                ),
                const SizedBox(height: 20), // Adjust spacing as needed
                ImageButton(
                  onPressed: () {
                    createFileOfPdfUrl(
                            'https://firebasestorage.googleapis.com/v0/b/educator99-33923.appspot.com/o/Example%20for%20questions.pdf?alt=media&token=afef28ec-0633-4a3f-8bd8-6669da8914d6')
                        .then((f) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PDFScreen(Path: f.path)),
                      );
                    });
                  },
                  image: const AssetImage('assets/final_paper.jpg'),
                  width: 300.0,
                  height: 200.0,
                ),
                const Text(
                  'final paper',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w200),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PdfViewerPage extends StatelessWidget {
  final String pdfUrl;

  PdfViewerPage(this.pdfUrl);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
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

