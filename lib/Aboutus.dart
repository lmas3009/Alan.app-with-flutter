import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "About us Page",
            style: TextStyle(
              fontSize: 50,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
