import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HalamanMaps extends StatefulWidget {
  const HalamanMaps({super.key});

  @override
  State<HalamanMaps> createState() => _HalamanMapsState();
}

class _HalamanMapsState extends State<HalamanMaps> {
  static const LatLng _itenas = LatLng(-6.897091781154257,
    107.63633880783779,);

  final Set<Marker> _markers = {
    Marker(
      markerId: const MarkerId('itenas'),
      position: _itenas,
      infoWindow: const InfoWindow(
        title: 'Institut Teknologi Nasional Bandung',
        snippet: 'Jl. PHH. Mustofa No.23, Bandung',
      ),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Maps"),
      ),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: _itenas,
          zoom: 15,
        ),
        markers: _markers,
      ),
    );
  }
}
