import 'package:flutter/material.dart';
import 'package:mangalyam360app/pages/cartpage.dart';

class WishlistScreen extends StatefulWidget {
  @override
  _WishlistScreenState createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  late DateTime _selectedDate;
  late TimeOfDay _selectedTime;
  TextEditingController _locationController = TextEditingController();
  TextEditingController _guestsController = TextEditingController();
  TextEditingController _dayController = TextEditingController();
  List<String> _wishlistItems = [];

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
    _selectedTime = TimeOfDay.now();
  }

  void addToWishlist() {
    String wishlistItem =
        '${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year} at ${_selectedTime.hour}:${_selectedTime.minute} - ${_locationController.text} - ${_guestsController.text} guests - ${_dayController.text} days';
    setState(() {
      _wishlistItems.add(wishlistItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Wishlist:',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                SingleChildScrollView(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _wishlistItems.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(_wishlistItems[index]),
                      );
                    },
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      addToWishlist();
                    },
                    child: Text('Add to Cart'),
                  ),
                ),
                
               Row(
                mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   FloatingActionButton(onPressed: (){
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => CartScreen(wishlistItems: _wishlistItems),));
                      }, child: Icon(Icons.arrow_circle_right_outlined),),
                 ],
               ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





