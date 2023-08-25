import 'package:flutter/material.dart';
import 'package:mosmetro_wear/screens/map.dart';
import 'package:mosmetro_wear/templates/adapt_screen_base.dart';
import 'package:mosmetro_wear/widgets/round_button.dart';
import 'package:wearable_rotary/wearable_rotary.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return AdaptScreenBase(
      builder: (context, size) => ListView(
        controller: RotaryScrollController(),
        children: [
          iconLabelButton(
            icon: Icons.map, 
            text: "Карта метро", 
            onPressed: toMap,
          ),
          iconLabelButton(
            icon: Icons.pin_drop, 
            text: "Станции", 
            onPressed: toMap,
          ),
        ],
      ),
    );
  }

  void toMap() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const MapScreen()));
  }
  
  void toStations() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const MapScreen()));
  }
  

  Widget iconLabelButton({required IconData icon, required String text, required VoidCallback onPressed}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      child: RoundButton(
        height: 50,
        withBorder: true,
        background: Colors.transparent,
        onPressed: onPressed, 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Icon(icon),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(text),
            ),
          ],
        ),
      ),
    );
  }
}