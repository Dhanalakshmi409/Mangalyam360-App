import 'package:flutter/material.dart';
import 'package:mangalyam360app/pages/checkoutscreen.dart';
import 'package:mangalyam360app/pages/pay.dart';

class CartScreen extends StatelessWidget {
  final List<String> wishlistItems;

  const CartScreen({Key? key, required this.wishlistItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
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
              SingleChildScrollView(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: wishlistItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(wishlistItems[index]),
                    );
                  },
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckoutScreen(cartItems: wishlistItems),
                    ),
                  );
                },
                child: Text('Go to Paynow'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

