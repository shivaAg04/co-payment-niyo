// Fake data for the app
// Create a new file named my_dummy_data.dart inside the util folder and add the following code:
import 'package:flutter/material.dart';

class MyDummyData {
  static const List<String> reason = [
    "Spend or\nsave daily",
    "Fast my\ntransactions",
    "Payment to\nfriends",
    "Online\nPayments",
    "Spend while\ntraveling",
    " Your financial\nassets"
  ];
  // list of icons
  static const List<Icon> icon = [
    const Icon(Icons.settings_input_composite_rounded),
    const Icon(Icons.flash_auto_sharp),
    const Icon(Icons.people),
    const Icon(Icons.wallet_sharp),
    const Icon(Icons.wallet_travel_outlined),
    const Icon(Icons.assist_walker_sharp),
  ];

  // list of colors
  static const List<bool> isColor = [
    true,
    false,
    false,
    true,
    false,
    false,
  ];
}
