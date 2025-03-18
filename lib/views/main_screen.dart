import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'profile_screen.dart';
import 'cart_screen.dart';
import 'orders_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(), //
    OrdersScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type:
            BottomNavigationBarType.fixed, // Ensures labels are always visible
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Cari"), // Search icon for searching
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorit"), // Heart icon for favorites
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Kos Saya"), // Home icon for owned kos
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Pofil"), // Chat icon for messaging
        ],
      ),
    );
  }
}
