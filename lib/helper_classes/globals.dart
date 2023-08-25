import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Globals {
  static BuildContext get curContext => navKey.currentContext!;
  
  static final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
  static late Position pos;
  static String error = "";
  static String dioMsg = "";
  static String wifiMsg = "";
}