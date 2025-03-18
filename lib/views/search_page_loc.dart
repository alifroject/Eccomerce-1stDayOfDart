import 'package:flutter/material.dart';
import 'pagesLoc/region_page.dart';
import 'pagesLoc/kota_page.dart';

class SearchPageLoc extends StatefulWidget {
  @override
  _SearchPageLocState createState() => _SearchPageLocState();
}

class _SearchPageLocState extends State<SearchPageLoc>
    with TickerProviderStateMixin {
  TabController? _tabController;
  TextEditingController _searchController = TextEditingController();

  final Map<int, String> cityData = {
    1: "Jakarta",
    2: "Bandung",
    3: "Surabaya",
    4: "Yogyakarta",
    5: "Medan",
  };

  String _result = "";

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(() {
          _tabController = TabController(length: 2, vsync: this);
        });
      }
    });
  }

  void _searchCity(String value) {
    int? num = int.tryParse(value);
    setState(() {
      _result = (num != null && cityData.containsKey(num))
          ? cityData[num]! // Found city
          : "City not found"; // Not in list
    });
  }

  @override
  void dispose() {
    _tabController?.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: "Enter a number (1-5)",
            border: InputBorder.none,
          ),
          onChanged: _searchCity,
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // ✅ Realtime city result appears here
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            color: Colors.grey[200], // Light background
            child: Text(
              _result.isNotEmpty ? _result : "No city selected",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),

          // ✅ TabBar positioned correctly below the input result
          if (_tabController != null)
            TabBar(
              controller: _tabController,
              tabs: [
                Tab(text: "Region"),
                Tab(text: "Kota"),
              ],
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.blue,
            ),

          // ✅ Tab View
          Expanded(
            child: _tabController == null
                ? Center(child: CircularProgressIndicator())
                : TabBarView(
                    controller: _tabController,
                    children: [
                      RegionPage(),
                      KotaPage(),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
