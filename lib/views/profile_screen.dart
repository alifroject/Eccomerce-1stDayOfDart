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
                  padding: EdgeInsets.only(
                      left: 16.0), // Adds space on the left side
                  icon: Container(
                    padding: EdgeInsets.all(
                        12), // This adds space around the icon, making the background circular
                    decoration: BoxDecoration(
                      color: Colors.white, // Circular background color
                      shape: BoxShape.circle, // Makes the background circular
                    ),
                    child: Icon(
                      Icons.person,
                      color: Colors.blue,
                      size: 30,
                    ),
                  ),
                  onPressed: () {
                    // Your onPressed logic here
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 16.0), // Add padding to the left side
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start, // Align everything to the left
                    children: <Widget>[
                      // First row for Name
                      Text(
                        'Name', // Display the name
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),

                      // Second row for Followers and Following
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .start, // Align them to the start of the row
                        children: <Widget>[
                          Text('Followers: 0', style: TextStyle(fontSize: 16)),
                          SizedBox(
                              width: 20), // Adds space between the two texts
                          Text('Following: 0', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ))),
      ),
      body: Center(child: Text('Ini halaman Profile')),
    );
  }
}
