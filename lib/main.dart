import 'package:flutter/material.dart';

import 'screen/activity_screen.dart';
import 'screen/new_card_screen.dart';
import 'screen/reason_screen.dart';
import 'screen/splash_screen.dart';
import 'screen/transaction_history.dart';
import 'widget/credit_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'niyo payment',
      home: NewCardScreen(),
    );
  }
}
