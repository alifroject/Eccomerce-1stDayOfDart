import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
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
                    // Aksi ketika menu ditekan
                  },
                ),
                Expanded(
                  // Supaya inputan tidak melebihi batas Row
                  child: Container(
                    height: 40, // Sesuaikan tinggi input
                    padding: EdgeInsets.symmetric(
                        horizontal: 10), // Biar tidak terlalu rapat
                    decoration: BoxDecoration(
                      color: Colors.white, // Warna background input
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Cari sesuatu...',
                        border: InputBorder.none, // Hilangkan border bawaan
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
      body: Center(child: Text('Ini halaman Home')),
    );
  }
}
