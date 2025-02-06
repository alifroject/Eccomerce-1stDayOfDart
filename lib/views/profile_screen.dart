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
                      left: 16.0), 
                  icon: Container(
                    padding: EdgeInsets.all(
                        12), 
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
                  onPressed: () {
                    
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 16.0), // Add padding to the left side
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start,
                    children: <Widget>[
                      
                      Text(
                        'Name', 
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                      ),

                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .start, 
                        children: <Widget>[
                          Text('Followers: 0', style: TextStyle(fontSize: 16, color: Colors.white)),
                          SizedBox(
                              width: 20), 
                          Text('Following: 0', style: TextStyle(fontSize: 16, color: Colors.white)),
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
