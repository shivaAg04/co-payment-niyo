import 'dart:async';

import 'package:co_payment_niyo/screen/second_splash_screen.dart';
import 'package:co_payment_niyo/util/my_color.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    // want to open another scren

    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => SecondSplashScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // copyright icon
            const Icon(
              Icons.copyright,
              size: 80,
              color: Colors.black,
            ),
            // app name
            RichText(
              text: const TextSpan(
                text: 'Co',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
                children: [
                  TextSpan(
                    text: '.Payment',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
