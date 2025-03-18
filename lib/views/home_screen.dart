import 'package:flutter/material.dart';
import 'search_page_loc.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

List<String> imageUrls = [
  'https://satupersen.co.id/wp-content/uploads/2022/11/1A22422A-90E3-423E-B2CD-A375D172594E.jpeg',
  'https://imgsrv2.voi.id/XdWJO2haRnkH4t1puypTYtVZilJeLXVh86J1D7QenEg/auto/1200/675/sm/1/bG9jYWw6Ly8vcHVibGlzaGVycy8xMTk5MzQvMjAyMjAxMDMwNTU0LW1haW4uY3JvcHBlZF8xNjQxMTY0MDcyLmpwZw.jpg',
  'assets/images/me.jpg',
];

class ImageItem {
  final String imageUrl;
  final String title;

  ImageItem({required this.imageUrl, required this.title});
}

class Property {
  final String name;
  final String region;
  final String owner;
  final int availableRooms;
  final double price;
  final String imageUrl;

  Property({
    required this.name,
    required this.region,
    required this.owner,
    required this.availableRooms,
    required this.price,
    required this.imageUrl,
  });
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; // Track the active image index

  List<ImageItem> imageList = [
    ImageItem(
        imageUrl:
            'https://satupersen.co.id/wp-content/uploads/2022/11/1A22422A-90E3-423E-B2CD-A375D172594E.jpeg',
        title: 'Image 1'),
    ImageItem(
        imageUrl:
            'http://1.bp.blogspot.com/-W95syyy3J54/VH2wmOzADCI/AAAAAAAALTE/CKnUvNBYGaQ/s1600/ug.jpg',
        title: 'Image 2'),
    ImageItem(
        imageUrl:
            'https://imgsrv2.voi.id/XdWJO2haRnkH4t1puypTYtVZilJeLXVh86J1D7QenEg/auto/1200/675/sm/1/bG9jYWw6Ly8vcHVibGlzaGVycy8xMTk5MzQvMjAyMjAxMDMwNTU0LW1haW4uY3JvcHBlZF8xNjQxMTY0MDcyLmpwZw.jpg',
        title: 'Image 3'),
    ImageItem(imageUrl: 'https://picsum.photos/403/200', title: 'Image 4'),
  ];
  String? selectedRegion; // To store the selected region
  List<String> regions = [
    "Depok",
    "Bekasi",
    "Cengkareng",
    "Karawaci",
    "Jakarta"
  ];

  List<Property> properties = [
    Property(
      name: "Kost Mewah Jakarta",
      region: "Jakarta",
      owner: "Budi Santoso",
      availableRooms: 2,
      price: 1.5, // juta per bulan
      imageUrl: "https://kostjakarta.net/uploads/2023/05/531095.jpg",
    ),
    Property(
      name: "Kost Nyaman Bekasi",
      region: "Bekasi",
      owner: "Siti Aminah",
      availableRooms: 5,
      price: 1.2,
      imageUrl:
          "https://www.cekpremi.com/blog/wp-content/uploads/2021/04/bisnis-kos-kosan-768x576.jpeg",
    ),
    Property(
      name: "Apartemen Elite Cengkareng",
      region: "Cengkareng",
      owner: "Hendra Wijaya",
      availableRooms: 3,
      price: 2.0,
      imageUrl:
          "https://kataomed.com/wp-content/uploads/2024/02/inggal-di-Kontrakan-e1708508866806.jpg",
    ),
    Property(
      name: "Kost Eksklusif Karawaci",
      region: "Karawaci",
      owner: "Linda Saputra",
      availableRooms: 1,
      price: 1.8,
      imageUrl:
          "https://www.99.co/id/_next/image?url=https:%2F%2Fwww.99.co%2Fid%2Fimg-regional%2F618%2F412%2Fcrop%2Ftrue%2Fproduction%2Fimage%2Fuser%2F3753cb6a-78a5-4b9a-a4bb-70de54e9c58d%2F2024-05-22-02-33-18-16383433-a459-489d-8866-f5bd9937214a.jpg&w=1920&q=75",
    ),
    Property(
      name: "Apartemen Mewah Bekasi",
      region: "Bekasi",
      owner: "Doni Prasetyo",
      availableRooms: 4,
      price: 2.5,
      imageUrl:
          "https://static-id.lamudi.com/static/media/bm9uZS9ub25l/2x2x2x700x340/54ff4688e6242e.webp",
    ),
  ];

  final ScrollController _scrollController = ScrollController();

  void _scrollToTop() {
    _scrollController.animateTo(
      0, // Scroll to top position
      duration: Duration(milliseconds: 500), // Animation speed
      curve: Curves.easeInOut, // Smooth animation
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(150),
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
                              color: Colors.blue,
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
              GestureDetector(
                onTap: () {
                  // Navigate to another page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchPageLoc()),
                  );
                },
                child: Container(
                  height: 70,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        spreadRadius: 4,
                        offset: Offset(0, 0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Icon(Icons.search,
                          color: Colors.black), // Optional search icon
                      SizedBox(width: 8),
                      Text(
                        "Tap to search...",
                        style: TextStyle(color: Colors.black45, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: EdgeInsets.zero,
        child: Container(
          color: const Color.fromARGB(255, 223, 227, 229),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      offset: Offset(0, 4), // Shadow effect
                    ),
                  ],
                ),
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            12.0), // Smooth border for carousel
                        border: Border.all(
                            color: Colors.blueGrey, width: 2), // Border frame
                      ),
                      child: CarouselSlider(
                        options: CarouselOptions(
                          height: 200.0,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          viewportFraction: 0.85, // Keeps images well spaced
                        ),
                        items: imageUrls.map((imageUrl) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(
                                12.0), // Rounded image corners
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors
                                      .grey.shade300, // Inner border color
                                  width: 2,
                                ),
                              ),
                              child: imageUrl.startsWith('http')
                                  ? Image.network(imageUrl,
                                      fit: BoxFit.cover, width: double.infinity)
                                  : Image.asset(imageUrl,
                                      fit: BoxFit.cover,
                                      width: double.infinity),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(9.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      "Select a Region",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),

                    // Dropdown Button for Region Selection
                    DropdownButtonFormField<String>(
                      value: selectedRegion,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      ),
                      hint: Text("Choose a region"),
                      items: regions.map((region) {
                        return DropdownMenuItem(
                          value: region,
                          child: Text(region),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          selectedRegion = newValue;
                        });
                      },
                    ),

                    SizedBox(height: 20),

                    SizedBox(height: 20),

                    // Display Property Listings in a Horizontal Scrollable Row
                    SingleChildScrollView(
                      scrollDirection:
                          Axis.horizontal, // Enables horizontal scrolling
                      child: Row(
                        children: properties
                            .where((property) =>
                                selectedRegion == null ||
                                property.region == selectedRegion)
                            .map((property) {
                          return Container(
                            width: 200, // Fixed width for each item
                            margin: EdgeInsets.only(
                                right: 10), // Space between items
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(10)),
                                  child: Image.network(property.imageUrl,
                                      width: double.infinity,
                                      height: 120,
                                      fit: BoxFit.cover),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        property.name,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("Region: ${property.region}"),
                                      Text("Owner: ${property.owner}"),
                                      Text(
                                          "Rooms Left: ${property.availableRooms}"),
                                      Text(
                                          "Price: ${property.price} juta/month"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20), // Space before the button

              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    _scrollController.animateTo(
                      0, // Scroll to top
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                  icon: Icon(Icons.arrow_upward,
                      size: 20, color: Colors.white), // ✅ Added Icon
                  label: Text(
                    "Kembali ke Atas",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12), // ✅ More padding
                    backgroundColor: Colors.blueAccent, // ✅ Stylish color
                    foregroundColor: Colors.white, // ✅ White text
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(30), // ✅ Rounded corners
                    ),
                    elevation: 5, // ✅ Subtle shadow
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
