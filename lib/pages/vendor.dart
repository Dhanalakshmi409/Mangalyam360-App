import 'package:flutter/material.dart';
import 'package:mangalyam360app/pages/booking.dart';
import 'package:mangalyam360app/pages/detailscreen.dart';
import 'package:mangalyam360app/pages/detailscreen1.dart';
import 'package:mangalyam360app/pages/detailscreen2.dart';
import 'package:mangalyam360app/pages/detailscreen3.dart';
import 'package:mangalyam360app/pages/detailscreen4.dart';
import 'package:mangalyam360app/pages/detailscreen5.dart';
import 'package:mangalyam360app/pages/detailscreen6.dart';
import 'package:mangalyam360app/pages/vendordetailscreen.dart';
import 'package:mangalyam360app/widget/bridal.dart';
import 'package:mangalyam360app/widget/catering.dart';
import 'package:mangalyam360app/widget/decoration.dart';
import 'package:mangalyam360app/widget/jewel.dart';
import 'package:mangalyam360app/widget/mehandi.dart';
import 'package:mangalyam360app/widget/music.dart';
import 'package:mangalyam360app/widget/pandit.dart';
import 'package:mangalyam360app/widget/photography.dart';
import 'package:mangalyam360app/widget/venues.dart';

class VendorScreen extends StatefulWidget {
  @override
  _VendorScreenState createState() => _VendorScreenState();
}

class _VendorScreenState extends State<VendorScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text('Vendors'),
      ),
      body:SingleChildScrollView(
        child:
       Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            ListTile(
              title: Text('BridalMapeups'),
              subtitle: Image.asset('assets/makeup.jpeg'),
              trailing: IconButton(onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => BridalListWidget(),));
              }, icon:Icon(Icons.favorite_border_outlined)),
            ),
             ListTile(
              title: Text('Catering'),
              subtitle: Image.asset('assets/catering.jpeg'),
              trailing: IconButton(onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => CateringListWidget()));
              }, icon:Icon(Icons.favorite_border_outlined)),
            ),
             ListTile(
              title: Text('Decoration'),
              subtitle: Image.asset('assets/flowerdec.jpeg'),
              trailing: IconButton(onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => DecorListWidget()));
              }, icon:Icon(Icons.favorite_border_outlined)),
            ),
             ListTile(
              title: Text('Photography'),
              subtitle: Image.asset('assets/photographer.jpeg'),
              trailing: IconButton(onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => PhotoListWidget(),));
              }, icon:Icon(Icons.favorite_border_outlined)),
            ),
             ListTile(
              title: Text('venues'),
              subtitle: Image.asset('assets/event.jpeg'),
              trailing: IconButton(onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => venuesListWidget()));
              }, icon:Icon(Icons.favorite_border_outlined)),
            ),
            ListTile(
              title: Text('BridalJewelset'),
              subtitle: Image.asset('assets/jewel.jpeg'),
              trailing: IconButton(onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) =>jewelListWidget() ));
              }, icon:Icon(Icons.favorite_border_outlined)),
            ),
            ListTile(
              title: Text('Mehandi'),
              subtitle: Image.asset('assets/mehandi.png'),
              trailing: IconButton(onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) =>MehandiListWidget()));
              }, icon:Icon(Icons.favorite_border_outlined)),
            ),
             ListTile(
              title: Text('DJ and Musics'),
              subtitle: Image.asset('assets/music_event.png'),
              trailing: IconButton(onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => MusicListWidget()));
              }, icon:Icon(Icons.favorite_border_outlined)),
            ),
             ListTile(
              title: Text('Pandit'),
              subtitle: Image.asset('assets/pandit.png'),
              trailing: IconButton(onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => PanditListWidget()));
              }, icon:Icon(Icons.favorite_border_outlined)),
            ),
          ],
        ) ,
        ),
      ),
    );
  }
}

