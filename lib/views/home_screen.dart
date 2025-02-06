import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      "name": "Lenovo ThinkBook 2024",
      "price": 10000000,
      "sold": 45,
      "image":
          "https://i.pcmag.com/imagery/articles/05gYYpq2gwWk8ADSgQ9zuCR-4.jpg"
    },
    {
      "name": "Iphone 13",
      "price": 9000000,
      "sold": 50,
      "image":
          "https://yemenivoice.com/wp-content/uploads/2022/04/The-iPhone-13-and-iPhone-13-Pro-now-in-stunning-green-finishes.jpg"
    },
    {
      "name": "Liverpool Anthem Jacket",
      "price": 100000,
      "sold": 90,
      "image":
          "https://images-na.ssl-images-amazon.com/images/I/91YZJJV68fL._UY879_.jpg"
    },
    {
      "name": "Series 5000 Blender Philips",
      "price": 600000,
      "sold": 530,
      "image": "https://m.media-amazon.com/images/I/61kQQ8oFb6L._AC_SL1500_.jpg"
    },
    {
      "name": "A loyal boyfriend, can cook, can work...",
      "price": 120000000000,
      "sold": 0,
      "image":
          "https://firebasestorage.googleapis.com/v0/b/anak-gundar.appspot.com/o/profile_pictures%2FW46FVzAg7TV7agixabIKKRBMH3m1?alt=media&token=4be4c519-0b89-4f16-9590-32745a09a987"
    },
    {
      "name": "Everest Backpack, classic school",
      "price": 2300000,
      "sold": 120,
      "image":
          "https://i5.walmartimages.com/asr/e70819f4-b326-486f-b269-4e4e9d53dd74_1.9e273d26d99df5489ec6e83f05989fd2.jpeg"
    },
    {
      "name": "Adidas Campus 00s",
      "price": 4000000,
      "sold": 250,
      "image":
          "https://assets.adidas.com/images/w_940,f_auto,q_auto/ab8535b5853c4d29bfc74673e41d111e_9366/ID7028_09_standard.jpg"
    },
    {
      "name": "Electric Stove",
      "price": 24000000,
      "sold": 46,
      "image":
          "https://pisces.bbystatic.com/image2/BestBuy_US/images/products/4929/4929500ld.jpg"
    },

    //
    //pastikan semua produk hanya menggunakan URL gambar sebagai string
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Container(
          height: 150,
          decoration: BoxDecoration(
            color: Colors.blue, // Ganti warna sesuai selera
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.menu, color: Colors.white),
                  onPressed: () {
                   
                  },
                ),
                Expanded(
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Cari sesuatu...',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.notifications, color: Colors.white),
                  onPressed: () {
                    // Aksi ketika notifikasi ditekan
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 4 / 4,
                ),
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3,
                    child: Container(
                      height: 200, // Atur tinggi card
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.network(
                              product["image"],
                              width: 140,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            product["name"],
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 3),
                          Text(
                            NumberFormat.currency(
                                    locale: 'id',
                                    symbol: 'Rp ',
                                    decimalDigits: 0)
                                .format(product["price"]),
                            style: TextStyle(color: Colors.green, fontSize: 12),
                          ),
                          Text(
                            "${product["sold"]} purchased",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
