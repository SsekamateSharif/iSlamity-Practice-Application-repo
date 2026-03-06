import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:islamity/components/toolbar.dart';
import 'package:latlong2/latlong.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: "Maps"),
      body: FlutterMap(options: MapOptions(initialCenter: LatLng(44.4268, 26.1025),
      initialZoom: 10,),
      children: [
        TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: LatLng(44.4268, 26.1025),
              width: 40,
              height: 40, 
              child: Icon(
                Icons.location_pin,
                size: 40,
                color: Colors.red [600],
              ),
              ),
          ],
           ),
      ],
      ),
      
    );
  }
}
