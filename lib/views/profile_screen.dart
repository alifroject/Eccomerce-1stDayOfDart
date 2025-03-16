import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileScreen extends StatelessWidget {
  // Logout function
  Future<void> _signOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut(); // Firebase logout
    Navigator.pushReplacementNamed(context, '/welcome'); // Redirect to sign-up
  }

  @override
  Widget build(BuildContext context) {
    final User? user = FirebaseAuth.instance.currentUser;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Container(
            height: 140,
            decoration: BoxDecoration(
              color: Colors.blue,
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
                  Row(
                    children: [
                      SizedBox(width: 16),
                      
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: user?.photoURL != null
                            ? NetworkImage(user!.photoURL!)
                            : null,
                        child: user?.photoURL == null
                            ? Icon(Icons.person, size: 30, color: Colors.white)
                            : null,
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            user?.displayName ?? 'Guest',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            user?.email ?? 'No Email',
                            style:
                                TextStyle(fontSize: 14, color: Colors.white70),
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.logout, color: Colors.white),
                    onPressed: () => _signOut(context), // Logout function
                  ),
                  SizedBox(width: 16),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
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
                                Icon(Icons.payment,
                                    size: 32, color: Colors.red),
                                SizedBox(height: 5),
                                Text('Hasn\'t Paid',
                                    style: TextStyle(fontSize: 14)),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.archive,
                                    size: 32, color: Colors.orange),
                                SizedBox(height: 5),
                                Text('Packaging',
                                    style: TextStyle(fontSize: 14)),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.local_shipping,
                                    size: 32, color: Colors.blue),
                                SizedBox(height: 5),
                                Text('Dispatched',
                                    style: TextStyle(fontSize: 14)),
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
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.wallet_travel,
                                size: 22,
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'My Wallet',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '\ Rp.1000.000',
                              style: TextStyle(fontSize: 14, color: Colors.red),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Column(
                              children: [
                                Icon(Icons.add_circle,
                                    size: 32, color: Colors.green),
                                SizedBox(height: 5),
                                Text('Top Up', style: TextStyle(fontSize: 14)),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.transfer_within_a_station,
                                    size: 32, color: Colors.blue),
                                SizedBox(height: 5),
                                Text('Transferring',
                                    style: TextStyle(fontSize: 14)),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.schedule,
                                    size: 32, color: Colors.purple),
                                SizedBox(height: 5),
                                Text('Payment\nLater',
                                    style: TextStyle(fontSize: 14)),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.local_offer,
                                    size: 32, color: Colors.orange),
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
                  SingleChildScrollView(
                    child: Container(
                      color: Colors.white,
                      margin: EdgeInsets.all(9.0),
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 150,
                                height: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.pink),
                                ),
                                child: Center(
                                  child: Text('Box 1',
                                      style: TextStyle(fontSize: 14)),
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.pink),
                                ),
                                child: Center(
                                  child: Text('Box 2',
                                      style: TextStyle(fontSize: 14)),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 10),

                          // Second Row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 150,
                                height: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.pink),
                                ),
                                child: Center(
                                  child: Text('Box 3',
                                      style: TextStyle(fontSize: 14)),
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.pink),
                                ),
                                child: Center(
                                  child: Text('Box 4',
                                      style: TextStyle(fontSize: 14)),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 10),

                          // Third Row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 150,
                                height: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.pink),
                                ),
                                child: Center(
                                  child: Text('Box 5',
                                      style: TextStyle(fontSize: 14)),
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.pink),
                                ),
                                child: Center(
                                  child: Text('Box 6',
                                      style: TextStyle(fontSize: 14)),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 10),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 150,
                                height: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.pink),
                                ),
                                child: Center(
                                  child: Text('Box 7',
                                      style: TextStyle(fontSize: 14)),
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.pink),
                                ),
                                child: Center(
                                  child: Text('Box 8',
                                      style: TextStyle(fontSize: 14)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
