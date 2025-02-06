import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Container(
            height: 140,
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
                  padding: EdgeInsets.only(left: 16.0),
                  icon: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.person,
                      color: Colors.blue,
                      size: 30,
                    ),
                  ),
                  onPressed: () {},
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 16.0), // Add padding to the left side
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Name',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text('Followers: 0',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white)),
                          SizedBox(width: 20),
                          Text('Following: 0',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ))),
      ),
      body: Center(
        child: Container(
          color: const Color.fromARGB(255, 202, 206, 209),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(9.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'My Orders',
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: [
                            Icon(Icons.payment, size: 32, color: Colors.red),
                            SizedBox(height: 5),
                            Text('Hasn\'t Paid',
                                style: TextStyle(fontSize: 14)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.archive, size: 32, color: Colors.orange),
                            SizedBox(height: 5),
                            Text('Being Wrapped',
                                style: TextStyle(fontSize: 14)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.local_shipping,
                                size: 32, color: Colors.blue),
                            SizedBox(height: 5),
                            Text('Dispatched', style: TextStyle(fontSize: 14)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.star, size: 32, color: Colors.green),
                            SizedBox(height: 5),
                            Text('Review', style: TextStyle(fontSize: 14)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(9.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'My Wallet',
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: [
                            Icon(Icons.add_circle,
                                size: 32,
                                color: Colors.green), // Plus icon for top-up
                            SizedBox(height: 5),
                            Text('Top Up', style: TextStyle(fontSize: 14)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.transfer_within_a_station,
                                size: 32, color: Colors.blue), // Transfer icon
                            SizedBox(height: 5),
                            Text('Transferring',
                                style: TextStyle(fontSize: 14)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.schedule,
                                size: 32,
                                color: Colors
                                    .purple), // Clock icon for delayed payment
                            SizedBox(height: 5),
                            Text('Payment\nLater',
                                style: TextStyle(fontSize: 14)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.local_offer,
                                size: 32,
                                color: Colors.orange), // Discount icon
                            SizedBox(height: 5),
                            Text('Discount/\nVoucher',
                                style: TextStyle(fontSize: 14)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'This is a short bio or description of the user. You can add more details here.',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
