import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screen/activity_screen.dart';
import 'screen/custom_bottom_bar.dart';
import 'screen/new_card_screen.dart';
import 'screen/reason_screen.dart';
import 'screen/splash_screen.dart';
import 'screen/transaction_history.dart';
import 'widget/credit_card.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarIconBrightness: Brightness.light,
  ));
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
      home: SplashScreen(),
    );
  }
}
