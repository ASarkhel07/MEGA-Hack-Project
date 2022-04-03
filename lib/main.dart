import 'dart:async'; // DO NOT REMOVE, WE USE IT LATER ok momo will not remove

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tracer/screens/LandingScreen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart'; // DO NOT REMOVE, WE USE IT LATER
// import 'package:location/location.dart';
import 'dart:ui';
import 'package:tracer/constants.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: colorWhite, 
        textTheme: screenWidth <500 ? textThemeSmall : textThemeDefault,
        fontFamily: "Raleway", colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange).copyWith(secondary: colorDarkBlue)
      ),
      //home:SplashScreen(),
      home: const LandingScreen()// MapSample(),
    );
  }
}

//CODE FOR THE MAP

class MapSample extends StatefulWidget {
  const MapSample({Key? key}) : super(key: key);

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: const Text('To the lake!'),
        icon: const Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}