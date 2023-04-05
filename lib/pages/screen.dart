import 'package:flutter/material.dart';
import 'package:mangalyam360app/pages/homepage.dart';

class screenpage extends StatefulWidget {
  const screenpage({super.key});

  @override
  State<screenpage> createState() => _screenpageState();
}

class _screenpageState extends State<screenpage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          child: Image.asset("assets/background1.png",
          height: 770,
          fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/logo.png",
                height: 50,
              ),
              SizedBox(height: 18,),
              Row(
                children: <Widget>[
                  Text(
                    "Mangalyam",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "360",
                    style: TextStyle(
                        color: Color(0xffFFA700),
                        fontSize: 25,
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
              SizedBox(height: 14,),
              Text("There’s a lot happening around you! Our mission is to provide what’s happening near you!",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w500
              ),),
              SizedBox(height: 14,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
                },
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Text("Get Started", style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),),
                      SizedBox(width: 8,),
                      Icon(Icons.arrow_forward, color: Colors.white)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ));
}
}
  