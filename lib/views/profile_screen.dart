import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Container(
            height: 120,
            decoration: BoxDecoration(
              color: Colors.blue,
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
              children: [
                IconButton(
                  icon: Icon(Icons.person,
                      color: Colors.white, size: 30), // Ukuran ikon
                  onPressed: () {
                    // Tambahkan aksi yang diinginkan, misalnya:
                    Navigator.pushNamed(context, '/profile');
                  },
                  tooltip:
                      'Profile', // Menampilkan tooltip saat ikon ditekan lama
                )
              ],
            ))),
      ),
      body: Center(child: Text('Ini halaman Profile')),
    );
  }
}
