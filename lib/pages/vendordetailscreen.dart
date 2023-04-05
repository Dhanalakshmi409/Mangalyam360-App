// import 'package:flutter/material.dart';

// class VendorDetailScreen extends StatelessWidget {
//   final String vendor;

//   VendorDetailScreen({Key? key, required this.vendor}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(vendor),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               vendor,
//               style: TextStyle(
//                 fontSize: 24.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 16.0),
//             Text(
//               'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
//               style: TextStyle(fontSize: 16.0),
//             ),
//             SizedBox(height: 16.0),
//             Text(
//               'Contact Information:',
//               style: TextStyle(
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 8.0),
//             Text(
//               'Email: vendor@$vendor.com',
//               style: TextStyle(fontSize: 16.0),
//             ),
//             Text(
//               'Phone: 555-555-5555',
//               style: TextStyle(fontSize: 16.0),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';

// class VendorDetailScreen extends StatelessWidget {
//   final String vendor;

//   VendorDetailScreen({required this.vendor});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(vendor),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Container(
//               height: 200.0,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage('assets/splashmangalyam.jpg'),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             SizedBox(height: 16.0),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16.0),
//               child: Text(
//                 'About $vendor',
//                 style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(height: 8.0),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16.0),
//               child: Text(
//                 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mattis erat purus, vel lacinia mauris placerat non. Integer pellentesque risus vel risus eleifend, non convallis mi ultrices. Donec auctor semper sapien vel euismod. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed suscipit aliquet dolor, a sagittis purus sagittis in. Praesent sollicitudin metus quam, eu volutpat lorem convallis vel. Maecenas bibendum libero eu justo sodales, in ullamcorper felis iaculis. Fusce eleifend massa et turpis congue, et vulputate leo blandit. Fusce eu magna ac felis luctus rhoncus. Ut vitae faucibus lacus, nec posuere mi. Pellentesque ultrices lacus vitae lacinia efficitur.',
//                 style: TextStyle(fontSize: 16.0),
//               ),
//             ),
//             SizedBox(height: 16.0),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16.0),
//               child: Text(
//                 'Services Offered by $vendor',
//                 style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(height: 8.0),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16.0),
//               child: Text(
//                 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mattis erat purus, vel lacinia mauris placerat non. Integer pellentesque risus vel risus eleifend, non convallis mi ultrices. Donec auctor semper sapien vel euismod. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed suscipit aliquet dolor, a sagittis purus sagittis in. Praesent sollicitudin metus quam, eu volutpat lorem convallis vel. Maecenas bibendum libero eu justo sodales, in ullamcorper felis iaculis. Fusce eleifend massa et turpis congue, et vulputate leo blandit. Fusce eu magna ac felis luctus rhoncus. Ut vitae faucibus lacus, nec posuere mi. Pellentesque ultrices lacus vitae lacinia efficitur.',
//                 style: TextStyle(fontSize: 16.0),
//               ),
//             ),
//           ],
//         )
//       )
//     );
//   }
// }

