import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mangalyam360app/pages/homepage.dart';
import 'package:mangalyam360app/pages/booknow.dart';
import 'package:mangalyam360app/pages/profilepage.dart';
import 'package:mangalyam360app/pages/vendor.dart';
import 'package:mangalyam360app/widget/catering.dart';

class HomeBottomBar extends StatefulWidget {
  const HomeBottomBar({super.key});

  @override
  State<HomeBottomBar> createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
      decoration:  BoxDecoration(
        color: Colors.blue[100],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) =>HomeScreen() ));
  },
       child : Column(
            children:[
          Icon(Icons.home,
          color: Colors.amber,
          size: 25,),
          Text("home",
          style:TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          ),
        ],
          ),
          ),
          InkWell(
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => VendorScreen()));
  },
      child:  Column(
            children: [
          Icon(Icons.search,
          color: Colors.amber,
          size: 25),
          Text("vendor",
          style:TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          ),
        ],
          ),
          ),
//  InkWell(
//   onTap: () {
//     Navigator.push(context, MaterialPageRoute(builder: (context) => CateringListWidget(),));
//   },
//    child: Column(
//               children: [
//             Icon(CupertinoIcons.cart,
//             color: Colors.amber,
//             size: 25,),
//             Text("Booking cart",
//             style:TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.bold,
//             ),
//             ),
//           ],
//             ),
//  ),
  InkWell(
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
  },
       child :
 Column(
            children: [
          Icon(Icons.person,
          color: Colors.amber,
          size: 25),
          Text("Profile",
          style:TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          ),
        ],
          ),
  ),
 
        ],
      ),
    );
  }
}