import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mosmetro_wear/helper_classes/dio_request.dart';
import 'package:mosmetro_wear/screens/main_screen.dart';

import 'helper_classes/globals.dart';
import 'style.dart';
import 'templates/adapt_screen_base.dart';
import 'package:network_info_plus/network_info_plus.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await Geolocator.requestPermission();
  // try {
  //   var pos = await Geolocator.getCurrentPosition();
  //   Globals.pos = pos;
  //   debugPrint("lat: ${pos.latitude}, lon: ${pos.longitude}");
  // }
  // catch(e) {
  //   Globals.error = e.toString();
  // }

  // try {
  //   var response = await DioRequest.dio.getUri(Uri.parse("https://catfact.ninja/fact"));
  //   Globals.dioMsg = response.data.toString();
  // } 
  // catch(e) {
  //   Globals.dioMsg = e.toString();
  // } 

  // try {
  //   final info = NetworkInfo();

  //   final wifiName = await info.getWifiName(); // "FooNetwork"
  //   // final wifiBSSID = await info.getWifiBSSID(); // 11:22:33:44:55:66
  //   // final wifiIP = await info.getWifiIP(); // 192.168.1.43
  //   final wifiIPv6 = await info.getWifiIPv6(); // 2001:0db8:85a3:0000:0000:8a2e:0370:7334
  //   // final wifiSubmask = await info.getWifiSubmask(); // 255.255.255.0
  //   // final wifiBroadcast = await info.getWifiBroadcast(); // 192.168.1.255
  //   // final wifiGateway = await info.getWifiGatewayIP(); // 192.168.1.1
  //   Globals.wifiMsg = "$wifiName\n$wifiIPv6";
  // }
  // catch(e) {
  //   Globals.wifiMsg = e.toString();
  // }

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    theme: appTheme,
    home: AdaptScreenBase(
      builder: (context, size) => const MainScreen(),
    ),
    debugShowCheckedModeBanner: false,
  );
}
