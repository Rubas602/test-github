import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:test_app/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.isRegistered()
        ? Get.find()
        : Get.put(HomeController());
    return Scaffold(
      backgroundColor: Colors.white10,
      body: GoogleMap(
        myLocationEnabled: true,
        trafficEnabled: true,
        // style: ,
        initialCameraPosition: CameraPosition(
          target: LatLng(24.85541, 67.03830),
          zoom: context.height*0.016
        ),
      ),
    );
  }
}
