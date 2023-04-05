import 'package:flutter/material.dart';
import 'package:mangalyam360app/pages/booking.dart';

class VendorDetailScreen6 extends StatefulWidget {
  final String vendor;

  VendorDetailScreen6({required this.vendor});

  @override
  _VendorDetailScreen6State createState() => _VendorDetailScreen6State();
}

class _VendorDetailScreen6State extends State<VendorDetailScreen6> {
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
                'assets/jewel.jpeg',
                // 'assets/${widget.vendor.toLowerCase()}.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'About BridalJewelset',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
    'Bridal jewellery is most commonly a blend of cultural and spiritual essence. The wedding jewellery set in Hyderabad and India comprises various different accessories like maang-tikka, passa, earrings, nose ring, glittering bangles, armlet, Kamar bandh and Payal.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Amount: \Rs.40,000',
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
