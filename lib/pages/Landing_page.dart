import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

void selectedCategory(BuildContext context) {
  Navigator.of(context).pushNamed('/navigation', arguments: {});
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'EchoNews',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        shadowColor: Colors.blue,
        elevation: 5.0,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Color(054290),
      body: Container(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              margin: EdgeInsets.all(10.0),
              child: Image.asset(
                'images/newsp.jpg',
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.all(40.0),
                  child: Text(
                    "Stay Infromed \n        From Day One",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  child: Text(
                    "Discover the Latest News with our\nSeamless Onboarding Experiences",
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () => selectedCategory(context),
                child: Container(
                  height: MediaQuery.of(context).size.height / 12.5,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Center(
                    child: Text(
                      "GET STARTED >>>>>",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
