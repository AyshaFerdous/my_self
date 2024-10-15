import 'package:flutter/material.dart';

void main() {
  runApp(MyResumeApp());
}

class MyResumeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResumeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class ResumeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Resume of Aysha",
            style: TextStyle(
              color: Colors.pink,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/hijab_image.jpg', // Local image path
                  width: 150,   // Width of the image
                  height: 150,  // Height of the image
                  fit: BoxFit.cover,  // Ensure the image covers the container
                ),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                'Aysha Ferdous Rumi',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.purple),
              ),
            ),
            SizedBox(height: 16),

            // Row with phone icon and phone number
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Center align the row
              children: [
                Icon(Icons.phone, color: Colors.red), // Phone icon
                SizedBox(width: 8), // Space between icon and text
                Text(
                  '01994129128',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),

            SizedBox(height: 8), // Space between phone and email

            // Row with email icon and email address
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Center align the row
              children: [
                Icon(Icons.email, color: Colors.cyan), // Email icon
                SizedBox(width: 8), // Space between icon and text
                Text(
                  'aysharumi18@gmail.com',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),

            SizedBox(height: 24), // Add space before next sections

            ResumeSectionTitle(
              sectionTitle: 'Personal Info',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsPage(
                      'Personal Info',
                      'Age                 :      25\nLocation         :     Khulshi, Chattogram\nNationality     :     Bangladeshi\nHobby            :     Travelling,Reading Book\nBlood Group :     A+',
                    ),
                  ),
                );
              },
            ),
            ResumeSectionTitle(
              sectionTitle: 'Skills',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsPage(
                      'Skills',
                      'Language :      Flutter, Dart, Java, Python, SQL, HTML, CSS\n\nComputer Based Skill :     Ms Word , Ms Excel',
                    ),
                  ),
                );
              },
            ),
            ResumeSectionTitle(
              sectionTitle: 'Education',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsPage(
                      'Education',
                      'Bachelor of Computer Science                       :     International Islamic University Chittagong\n\n'
                          'Higher Secondary School Certificate (HSC) :     Bangladesh Mohila Samity Girls High School & College\n\n'
                          'Secondary School Certificate (SSC)              :     Bangladesh Mohila Samity Girls High School & College',
                    ),
                  ),
                );
              },
            ),
            ResumeSectionTitle(
              sectionTitle: 'Experience',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsPage(
                      'Experience',
                      'Have experience in Teaching Profession\n\n'
                      'Voluntary Activities : Volunteer At Bangladesh Red Crescent Society(BDRCS)\n\nTrainning And Courses :\n     1.Basic First Aid Training\n     2.Training of Trainers(TOT) on First Aid\n     3.Unit Disaster Response Team Training\n',
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ResumeSectionTitle extends StatelessWidget {
  final String sectionTitle;
  final VoidCallback onTap;

  ResumeSectionTitle({required this.sectionTitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        elevation: 2.0,
        child: InkWell(
          onTap: onTap,
          child: ListTile(
            title: Text(
              sectionTitle,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  final String title;
  final String details;

  DetailsPage(this.title, this.details);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          details,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
