import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String myposition = '';
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      getPosition().then((Position myPos) {
        setState(() {
          myposition =
              'Latitude: ${myPos.latitude.toString()} - Longitude: ${myPos.longitude.toString()}';
          isLoading = false;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final myWidget = isLoading
        ? const CircularProgressIndicator()
        : Text(myposition);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Location Screen - Brilyan'),
      ),
      body: Center(
        child: myWidget,
      ),
    );
  }

  Future<Position> getPosition() async {
    await Geolocator.requestPermission();
    await Geolocator.isLocationServiceEnabled();
    Position position = await Geolocator.getCurrentPosition();
    return position;
  }
}