import 'package:flutter/material.dart';
import 'package:mangalyam360app/pages/pay.dart';

class CheckoutScreen extends StatefulWidget {
  final List<String> cartItems;

  const CheckoutScreen({Key? key, required this.cartItems}) : super(key: key);

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  bool _isLoading = false;
  String _paymentMethod = 'COD';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Cart:',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              ListView.builder(
                shrinkWrap: true,
                itemCount: widget.cartItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(widget.cartItems[index]),
                  );
                },
              ),
              SizedBox(height: 16.0),
              Text(
                'Select Payment Method:',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChoiceChip(
                    label: Text('COD'),
                    selected: _paymentMethod == 'COD',
                    onSelected: (selected) {
                      setState(() {
                        _paymentMethod = 'COD';
                      });
                    },
                  ),
                  ChoiceChip(
                    label: Text('Online'),
                    selected: _paymentMethod == 'Online',
                    onSelected: (selected) {
                      setState(() {
                        _paymentMethod = 'Online';
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _isLoading
                    ? null
                    : () {
                        setState(() {
                          _isLoading = true;
                        });
                        // Perform payment processing logic here
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PaymentScreen(),
                          ),
                        );
                      },
                child: _isLoading
                    ? CircularProgressIndicator()
                    : Text('Proceed to Payment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OrderConfirmationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Confirmation'),
      ),
      body: Center(
        child: Text('Thank you for your order!'),
      ),
    );
  }
}
