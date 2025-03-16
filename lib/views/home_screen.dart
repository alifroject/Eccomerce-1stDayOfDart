import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                   
                  ]

                ),
                child: SafeArea(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 4, vertical: 8), // Add margin effect
                      child: Row(
                        children: [
                          SizedBox(width: 8),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.black, // Black border
                            backgroundImage: null,
                            child: null, // Empty inside
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Our House",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold, // Makes text bold
                              fontFamily:
                                  'Roboto', // Change to a different font
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () => {},
                      icon: Stack(
                        children: [
                          Icon(Icons.notifications_outlined,
                              color: Colors.black, size: 35), // Bell icon

                          Positioned(
                            right: 4,
                            top: 4,
                            child: Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                '3', // Notification count
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
              ),
              Container(
                height: 90,
                decoration: BoxDecoration(color: Colors.blue, boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      offset: Offset(0, 4))
                ]),
              )
            ],
          )),
      body: Center(child: Text("This is child")),
    );
  }
}
