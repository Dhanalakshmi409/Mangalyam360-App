import 'package:flutter/material.dart';
import 'package:mangalyam360app/pages/booking.dart';

class VendorDetailScreen4 extends StatefulWidget {
  final String vendor;

  VendorDetailScreen4({required this.vendor});

  @override
  _VendorDetailScreen4State createState() => _VendorDetailScreen4State();
}

class _VendorDetailScreen4State extends State<VendorDetailScreen4> {
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
                'assets/venues1.png',
                // 'assets/${widget.vendor.toLowerCase()}.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'About Venues',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
    'A venue is the place where an event or meeting is happening. If you are going to see the best band ever, you should get to the venue early to get a good seat. Venue is derived from the Latin for "come" (venire), and its a place people come to.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Amount: \Rs.2,00,000',
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
