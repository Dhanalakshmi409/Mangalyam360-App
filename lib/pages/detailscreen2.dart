import 'package:flutter/material.dart';
import 'package:mangalyam360app/pages/booking.dart';

class VendorDetailScreen2 extends StatefulWidget {
  final String vendor;

  VendorDetailScreen2({required this.vendor});

  @override
  _VendorDetailScreen2State createState() => _VendorDetailScreen2State();
}

class _VendorDetailScreen2State extends State<VendorDetailScreen2> {
  bool _isAppointmentFixed = false;
  String _appointmentDate = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VendordetailScreen'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Image.asset(
                'assets/floor.jpeg',
                // 'assets/${widget.vendor.toLowerCase()}.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'About FloorDecoration',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'floral decoration, art of arranging living or dried plant material for adornment of the body or home or as a part of public ceremonies, festivals, and religious rituals.There is a certain sense of purity in the love shared between the newlyweds and white flowers denote this purity. In the Indian context, the sweet-scented jasmine is a flower that signifies the innocence of love that is to be shared between the couple.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Amount: \Rs.18,000',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Rating: 4.5',
              style: TextStyle(fontSize: 16.0),
            ),
                        _isAppointmentFixed
                ? Text(
                    'Appointment fixed for $_appointmentDate',
                    style: TextStyle(fontSize: 16.0),
                  )
                : ElevatedButton(
                    child: Text('Fix appointment'),
                    onPressed: () {
         Navigator.push(context, MaterialPageRoute(builder:(context) => BookingScreen(),));            
                      // _showDatePicker(context);
                    },
                  ),
          ],
        ),
      ),
    );
  }
}
