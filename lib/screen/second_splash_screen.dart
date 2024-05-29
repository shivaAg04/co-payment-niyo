import 'dart:async';

import 'package:co_payment_niyo/screen/reason_screen.dart';
import 'package:co_payment_niyo/util/my_color.dart';
import 'package:flutter/material.dart';

class SecondSplashScreen extends StatefulWidget {
  const SecondSplashScreen({super.key});

  @override
  State<SecondSplashScreen> createState() => _SecondSplashScreenState();
}

class _SecondSplashScreenState extends State<SecondSplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    // want to open another scren

    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const ReasonScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.mainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20.0, right: 50),
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: .3),
                  // Add border color
                  color: Colors.transparent, // Semi-transparent background
                  borderRadius: BorderRadius.circular(8.0), // Rounded corners
                ),
                child: InkWell(
                  onTap: () {
                    // Handle back button press
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.close,
                    size: 16,
                    color: Colors.white, // Change color as needed
                  ),
                ),
              ),
              Text(
                "Focus on your face",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .9,
            child: Image.asset(
              'assets/images/niyo_girl.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
