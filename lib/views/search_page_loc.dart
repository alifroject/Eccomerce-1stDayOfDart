import 'package:flutter/material.dart';
import 'pagesLoc/region_page.dart';
import 'pagesLoc/kota_page.dart';

class SearchPageLoc extends StatefulWidget {
  @override
  _SearchPageLocState createState() => _SearchPageLocState();
}

class _SearchPageLocState extends State<SearchPageLoc>
    with TickerProviderStateMixin {
  TabController? _tabController; // Make it nullable

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

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Location"),
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: _tabController == null
              ? SizedBox.shrink() // Don't build TabBar if it's null
              : TabBar(
                  controller: _tabController,
                  tabs: [
                    Tab(text: "Region"),
                    Tab(text: "Kota"),
                  ],
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.blue,
                ),
        ),
      ),
      body: _tabController == null
          ? Center(child: CircularProgressIndicator()) // Show loader if null
          : TabBarView(
              controller: _tabController,
              children: [
                RegionPage(),
                KotaPage(),
              ],
            ),
    );
  }
}
