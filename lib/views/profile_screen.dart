import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80), 
        child: SafeArea(
          child: Row(
            
          )
          )),
      body: Center(child: Text('Ini halaman Profile')),
    );
  }
}
