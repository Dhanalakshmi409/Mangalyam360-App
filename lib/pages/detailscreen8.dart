import 'package:flutter/material.dart';
import 'package:mangalyam360app/pages/booking.dart';

class VendorDetailScreen8 extends StatefulWidget {
  final String vendor;

  VendorDetailScreen8({required this.vendor});

  @override
  _VendorDetailScreen8State createState() => _VendorDetailScreen8State();
}

class _VendorDetailScreen8State extends State<VendorDetailScreen8> {
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
                'assets/mehandi.png',
                // 'assets/${widget.vendor.toLowerCase()}.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'About Mehandi',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
    'Mehndi, otherwise known as henna, is a paste associated with positive spirits and good luck. Indian Wedding tradition calls for a Mehndi ceremony to be held the night before the wedding as a way of wishing the bride good health and prosperity as she makes her journey on to marriage.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Amount: \Rs.5,000',
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
