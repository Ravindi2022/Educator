import 'package:educator/page5.dart';
import 'package:flutter/material.dart';



class page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Educator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Implement your back button functionality here
                  },
                  child: Text('< Back'),
                ),
                SizedBox(height: 16),
                Center(
                  // Center widget added here
                  child: Column(
                    children: [
                      Text(
                        'Computer Science',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          height: 1.2,
                          letterSpacing: 0,
                        ),
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () { Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => page5()),
                        );
                          // Implement functionality for Year 1 button
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF14374F)), // Dark blue background color
                          foregroundColor: MaterialStateProperty.all<Color>(
                              Colors.white), // Text color
                          minimumSize: MaterialStateProperty.all<Size>(
                              Size(324, 71)), // Button size
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                                  EdgeInsets.zero), // Remove default padding
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  30), // Button border radius
                            ),
                          ),
                        ),
                        child: Text(
                          'Year 1',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {
                          // Implement functionality for Year 2 button
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF14374F)), // Dark blue background color
                          foregroundColor: MaterialStateProperty.all<Color>(
                              Colors.white), // Text color
                          minimumSize: MaterialStateProperty.all<Size>(
                              Size(324, 71)), // Button size
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                                  EdgeInsets.zero), // Remove default padding
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  30), // Button border radius
                            ),
                          ),
                        ),
                        child: Text(
                          'Year 2',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {
                          // Implement functionality for Year 3 button
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF14374F)), // Dark blue background color
                          foregroundColor: MaterialStateProperty.all<Color>(
                              Colors.white), // Text color
                          minimumSize: MaterialStateProperty.all<Size>(
                              Size(324, 71)), // Button size
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                                  EdgeInsets.zero), // Remove default padding
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  30), // Button border radius
                            ),
                          ),
                        ),
                        child: Text(
                          'Year 3',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'KEY FEATURES',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'The course has a stronger focus on fundamental concepts underpinning Computer Science and the coverage of recent industry-changing developments in AI, big data analytics, computational theory and statistics for computing and machine learning.\n\n'
                  'The inclusion of a more substantial computation, statistical, and big data element into the course requires students with a stronger mathematical background, which is ensured by differentiated criteria for admission.\n\n'
                  'The course combines the Sri Lankan computing market demand with the wider research and development approaches in computer science to provide the necessary knowledge portfolio for the graduates, both within the Sri Lankan context and the wider international trends.\n\n'
                  'The course is taught by a combination of flying faculty from University of Plymouth and local lecturers, all with recognised research track record within their field, that seeking to embed research-informed teaching throughout the learning experience and helping to ensure state of the art knowledge, skills and practice. Students will have the exciting opportunity to engage with world-leading researchers in areas such as artificial intelligence, machine learning, neural networks and further advanced computing paradigms, provided through the continuous alignment of the programme to the current University of Plymouth curriculum.\n\n'
                  'NSBM has strong links with the Sri Lankan industry, having signed a Memorandum of Understanding (MoU) with 25 organizations who have either a IT focus or include a substantive IT element in their infrastructure or. In the preliminary phases, the group was consulted by the programme team to ensure the relevance of the curriculum to the market needs.\n\n'
                  'In line with the University of Plymouth values, NSBM promotes learning through practice and doing, and a prominent feature the two stages of the degree is a practice module that provides a holistic learning experience for students, drawing on the rest of their taught content from that stage (and earlier) and combining it to produce outputs of a professional standard.\n\n'
                  'The focus on fundamental and state of the art Computer Science topics further provides options to engage into postgraduate studies in Computer Science or Artificial Intelligence.',
                ),
                SizedBox(height: 16),
                Text(
                  'AIMS OF THE PROGRAM',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'To give students with a wide variety of qualifications and opportunities to realise their potential.\n\n'
                  'To enrich the curriculum content and teaching quality through the professional and/or research expertise of staff and through links to external organisations.\n\n'
                  'To encourage and support students while they develop and apply subject-specific and generic skills that will facilitate life-long learning and continuing professional development.\n\n'
                  'To produce graduates who can make a significant contribution to their chosen profession.\n\n'
                  'To provide an understanding of common algorithms, design patterns and computational models, and to apply these techniques to create high quality computer software and systems.\n\n'
                  'To produce graduates who are technical experts, but who also have an awareness of the business, social, legal and ethical contexts of IT.\n\n'
                  'In addition, the BSc (Hons) Computer Science programme has the following specific programme aims and objectives.\n\n'
                  'To provide a theoretical understanding of the fundamental principles underpinning Computer Science, such as aspects of class theories of computer languages and machines, contemporary AI and machine learning, or next generation computational paradigms like neural or quantum computing.\n\n'
                  'To present students to a broad spectrum of tools and methods in state-of-the-art parallel computing, networking, artificial intelligence or machine learning in order to develop key skills requested in many modern work environments.\n\n'
                  'To empower students to establish original solutions to novel challenges in professional environments based on computational thinking and theory. This may refer to a career in industry or the possibility of subsequent postgraduate studies.\n\n'
                  'To be informative and challenging, and to establish a knowledge base suitable for a career in computer science.\n\n'
                  'To provide a theoretical underpinning of the fundamental computer science principles that date from Alan Turing’s ideas, and earlier, and to apply these to an ever-changing world.\n\n'
                  'To provide an understanding of next generation computing paradigms, models and systems.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
