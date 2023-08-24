import 'package:flutter/material.dart';

class Globals {
  static final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
  
  static BuildContext get curContext => navKey.currentContext!;
}