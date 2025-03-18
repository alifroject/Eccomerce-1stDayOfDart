import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class SearchPageLoc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Map Example")),
      body: FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(-6.2088, 106.8456), // Jakarta, Indonesia (Example)
          initialZoom: 15, // Default Zoom
        ),
        children: [
          TileLayer(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'],
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: LatLng(-6.2088, 106.8456), // Fixed Location
                width: 40,
                height: 40,
                child: Icon(Icons.location_pin, size: 40, color: Colors.red),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
