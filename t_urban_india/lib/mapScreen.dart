import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:custom_info_window/custom_info_window.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  CustomInfoWindowController customInfoWindowController = CustomInfoWindowController();

  Uint8List? makerImage;
  List marker = [];
  List allTurbans = [];

  List<Marker> markerList = [];



  void getTurbans() async {

    var res = await http.get(Uri.parse(
        'https://t-urban-backend.anuja.dev/turbans'));
    var body = json.decode(res.body);
    setState(() {
      allTurbans = body;
      print(allTurbans);
    });
    print(body[0]["latitude"]);
    for(int i=0;i<=40;i++){
      marker.add(LatLng(double.parse(body[i]["latitude"]),double.parse(body[i]["longitude"])));
    }

    for(int i=0;i<=40;i++){
      markerList.add(
        Marker(
          icon: await BitmapDescriptor.fromAssetImage(ImageConfiguration(size: Size(0.5, 0.5)),
              'assets/logo.png'),
            markerId: MarkerId(i.toString()),
            position: marker[i],
            onTap: (){
              customInfoWindowController.addInfoWindow!(
Container(height: 200,width: 200,color: Colors.pink,),marker[i]
              );
            },
            //infoWindow: InfoWindow(title: body[i]["turbanName"]),
        ),
      );
    }
    setState(() {

    });
  }



  @override
  void initState() {
    super.initState();
    getTurbans();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: GoogleMap(
              initialCameraPosition:
                  CameraPosition(target: LatLng(21.146633, 79.088860), zoom: 4.6),
              markers: Set<Marker>.of(markerList),
              onTap: (position){

              },
              onMapCreated: (GoogleMapController controller) {
                customInfoWindowController.googleMapController == controller;
              },
            ),
          ),
          CustomInfoWindow(controller: customInfoWindowController,height: 200,width: 200,offset: 35,)
        ],
      ),
    );
  }
}
