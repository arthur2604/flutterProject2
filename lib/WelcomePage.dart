import 'package:flutter/material.dart';
import 'package:fp/HomePage.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/welcome.png', // Add your image to the assets folder and specify the path here
              height: 200,
              width: 200,
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to Our Program',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()), // Replace HomePage with your target page
                );
              },
              child: Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}
