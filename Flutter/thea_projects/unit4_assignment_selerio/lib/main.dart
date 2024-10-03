import 'package:flutter/material.dart';

void main() {
  runApp(MyProfile());
}

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 236, 182, 207),
        title: Text('Thea Kaith Franchette Selerio'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/profile_myprofile.jpg'),
                  ),
                  SizedBox(width: 16),
                  Text(
                    'Thea Kaith Franchette Selerio',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    InfoRow(Icons.email, 'Email',
                        'theakaithfranchette.selerio@wvsu.edu.ph'),
                    InfoRow(Icons.phone, 'Phone', '+639951934626'),
                    InfoRow(Icons.location_on, 'Location',
                        'Iloilo City, Iloilo 5000, Philippines'),
                    InfoRow(Icons.book, 'Hobbies',
                        'Studying, Sleeping, Walking the Dogs, Playing with the Pets'),
                    InfoRow(Icons.info, 'About Me',
                        'Computer Science Student, Learning In Progress'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Biography',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'I am a BS Computer Science 3rd year student, to be honest I am still lacking the skillset and a bit behind of understanding some concepts but trust me, I am Learning In Progress.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget InfoRow(IconData icon, String label, String data) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, size: 24),
          SizedBox(width: 16),
          Expanded(
            child: Text(
              label,
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(width: 16),
          Text(
            data,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
