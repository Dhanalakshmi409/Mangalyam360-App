import 'package:flutter/material.dart';
import 'package:mangalyam360app/pages/detailscreen1.dart';
import 'package:mangalyam360app/pages/detailscreen8.dart';

class MehandiListWidget extends StatelessWidget {
  const MehandiListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mehandi studio')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 1,
        ),
        itemCount: cateringServices.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                    VendorDetailScreen8(vendor: 'vendor')
                ),
              );
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imageCatering[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cateringServices[index].name,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '\$${cateringServices[index].price.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: List.generate(
                            5,
                            (i) => Icon(
                              i < cateringServices[index].ratingbar.floor()
                                  ? Icons.star
                                  : Icons.star_border,
                              color: Colors.amber,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class CateringService {
  final String name;
  final double price;
  final double ratingbar;

    CateringService({required this.name, required this.price, required this.ratingbar});
}

List<CateringService> cateringServices = [
  CateringService(name: 'Hand Mandalas', price: 2000, ratingbar: 4.5),
  CateringService(name: 'Henna wit', price: 3000, ratingbar: 4.2),
  CateringService(name: 'Star Brows', price: 2500, ratingbar: 4.8),
  CateringService(name: 'Luxebrows', price: 2500, ratingbar: 4.8),
  CateringService(name: 'Mehandi & Me', price: 2500, ratingbar: 4.8),

];

List<String> imageCatering = [
  'assets/mehandi5.jpeg',
  'assets/mehandi4.jpeg',
  'assets/mehandi3.jpeg',
  'assets/mehandi2.jpeg',
  'assets/mehandi1.jpeg',
];

