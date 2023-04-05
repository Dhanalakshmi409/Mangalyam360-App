import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mangalyam360app/pages/loginpage.dart';


class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isVisible = false;

  _SplashScreenState(){

    new Timer(const Duration(milliseconds: 3000), (){
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => LoginPage()), (route) => false);
      });
    });

    new Timer(
      Duration(microseconds: 3000),(){
        setState(() {
          _isVisible = true; // Now it is showing fade effect and navigating to Login page
        });
      }
    );

  }

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      child: AnimatedOpacity(
        opacity: _isVisible ? 1.0 : 0,
        duration: Duration(microseconds: 3000),
        child: Center(
                  child: Image.asset('assets/screen.png',height: 800,
                  width: 600,),
                ),
            ),
    );
  }
}