import 'package:flutter/material.dart';

class SearchPageLoc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Location"),
        backgroundColor: Colors.blue, // You can change the color
      ),
      body: Center(
        child: Text(
          "This is SearchPageLoc",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
