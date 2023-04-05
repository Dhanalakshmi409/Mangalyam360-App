import 'package:flutter/material.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms and Conditions'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'TERMS AND CONDITIONS FOR MARRIAGE EVENT MANAGEMENT :-',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              '1. Agreement :-\nBy hiring us, the client agrees to the terms and conditions outlined below.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              '2. Payment and Cancellation Policy :-\nThe client agrees to pay the full amount of the agreed upon fee for the services provided by us. In the event of cancellation, the client must notify us at least 30 days before the scheduled event date in order to receive a refund of the deposit. If cancellation is made within 30 days of the event date, the client will forfeit the deposit.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              '3. Scope of Services :-\nOur services include wedding planning and coordination, vendor management, venue selection, and event design. We will provide the agreed-upon services to the best of our ability and in a professional manner.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              '4. Client Responsibilities :-\nThe client is responsible for providing accurate and complete information regarding their event. This includes the number of guests, preferred vendors, and any special requests. The client is also responsible for securing any necessary permits or licenses for the event.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              '5. Vendor Selection :-\nWe will work with the client to select vendors that meet their needs and budget. However, we are not responsible for the quality of services provided by vendors, and the client is responsible for making payments directly to vendors.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              '6. Liability :-\nWe are not responsible for any damages or losses incurred during the event. The client is responsible for obtaining liability insurance to cover any damages or losses that may occur during the event.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              '7. Force Majeure :-\nWe are not responsible for any delays or failures to perform due to circumstances beyond our control, including but not limited to natural disasters, acts of God, or government actions.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              '8. Termination :-\nEither party may terminate this agreement at any time by providing written notice to the other party.',
              style: TextStyle(fontSize: 16.0),
            ),
           SizedBox(height: 16.0),
            Text(
              '9. Governing Law :-\nThis agreement shall be governed by and construed in accordance with the laws of the State of TamilNadu.',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}