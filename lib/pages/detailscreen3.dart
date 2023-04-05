import 'package:flutter/material.dart';
import 'package:mangalyam360app/pages/booking.dart';

class VendorDetailScreen3 extends StatefulWidget {
  final String vendor;

  VendorDetailScreen3({required this.vendor});

  @override
  _VendorDetailScreen3State createState() => _VendorDetailScreen3State();
}

class _VendorDetailScreen3State extends State<VendorDetailScreen3> {
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
                'assets/photographer.jpeg',
                // 'assets/${widget.vendor.toLowerCase()}.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'About Photography & Videography',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
        'Photography is not like any other commodity business. It is an artistic skill that requires creativity.'
        ' When it comes to top wedding photographers, a lot has to do with expensive equipment, technical knowledge, right techniques and creative abilities. The photographer captures the biggest event of your life. It is worth spending on it as you will cherish the memories all your life through the pictures and videos. And since, we all want quality work, it comes with a price.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Amount: \Rs.80,000',
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
