import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final currencyFormatter =
      NumberFormat.currency(locale: 'id_ID', symbol: 'Rp');

  Future<void> addItemToCart(String name, double price) async {
    if (name.isNotEmpty && price > 0) {
      await _firestore.collection('cart_items').add({
        'name': name,
        'price': price,
        'timestamp': FieldValue.serverTimestamp(),
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Item added to cart!')),
      );
      _nameController.clear();
      _priceController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Item Name'),
            ),
            TextField(
              controller: _priceController,
              decoration: InputDecoration(labelText: 'Price'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                double? price = double.tryParse(_priceController.text);
                if (price != null) {
                  addItemToCart(_nameController.text, price);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Please enter a valid price!')),
                  );
                }
              },
              child: Text('Add to Cart'),
            ),
            SizedBox(height: 20),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: _firestore
                    .collection('cart_items')
                    .orderBy('timestamp', descending: true)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Center(child: Text('Error loading items'));
                  }
                  if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    return Center(child: Text('No items in the cart'));
                  }

                  var cartItems = snapshot.data!.docs;

                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columnSpacing: 20,
                      columns: const [
                        DataColumn(label: Text('Item Name')),
                        DataColumn(label: Text('Price')),
                      ],
                      rows: cartItems.map((item) {
                        var data = item.data() as Map<String, dynamic>;
                        return DataRow(cells: [
                          DataCell(Text(data['name'] ?? 'No Name')),
                          DataCell(Text(
                              currencyFormatter.format(data['price'] ?? 0.0))),
                        ]);
                      }).toList(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
