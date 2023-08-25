import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mosmetro_wear/screens/menu.dart';
import 'package:mosmetro_wear/screens/profile.dart';
import 'package:mosmetro_wear/templates/adapt_screen_base.dart';
import 'package:mosmetro_wear/widgets/round_button.dart';
import 'package:mosmetro_wear/widgets/round_container.dart';
import 'package:wearable_rotary/wearable_rotary.dart';

import '../helper_classes/globals.dart';
import 'map.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late StreamSubscription<RotaryEvent> sub;
  bool inited = false;

  void rotaryHandler(RotaryEvent rot) {
    setState(() {
      if(rot.direction == RotaryDirection.clockwise) {i++;}
      else {i--;}
    });
  }
  int i = 0;

  @override
  void initState() {
    super.initState();

    if(inited) return;

    sub = rotaryEvents.listen(rotaryHandler);

    inited = true;
   }
  
  @override
  Widget build(BuildContext context) {
    return AdaptScreenBase(
      builder: (context, size) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("./assets/images/metro_icon.png", scale: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RoundButton(
                width: 100,
                height: 100,
                background: Colors.transparent,
                withBorder: true,
                onPressed: toProfile, 
                child: const Icon(Icons.account_circle_rounded, size: 50)
              ),
              RoundButton(
                width: 100,
                height: 100,
                background: Colors.transparent,
                withBorder: true,
                onPressed: toMenu, 
                child: const Icon(Icons.route_rounded, size: 50)
              ),
              // Text("lat: ${Globals.pos.latitude}, lon: ${Globals.pos.longitude}", style: const TextStyle(color: Colors.white)),
              // Text(i.toString(), style: const TextStyle(color: Colors.white)),
              // Text(Globals.error, style: const TextStyle(color: Colors.white)),
              // Text(Globals.dioMsg, style: const TextStyle(color: Colors.white)),
              // Text(Globals.wifiMsg, style: const TextStyle(color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }

  void toProfile() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen()));
  }

  void toMenu() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const MenuScreen()));
  }
}