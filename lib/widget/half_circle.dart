import 'package:flutter/material.dart';

class HalfFilledCircle extends StatelessWidget {
  const HalfFilledCircle(
      {super.key,
      required this.firstColor,
      required this.secondColor,
      required this.isSelectd});
  final Color firstColor;
  final Color secondColor;
  final bool isSelectd;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      height: 30,
      child: Stack(
        children: <Widget>[
          // First half filled with red
          Positioned(
            top: 0,
            child: Container(
              width: 30,
              height: 15,
              decoration: BoxDecoration(
                color: firstColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100),
                ),
              ),
            ),
          ),
          // Second half filled with yellow
          Positioned(
            bottom: 0,
            child: Container(
              width: 30,
              height: 15,
              decoration: BoxDecoration(
                color: secondColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
              ),
            ),
          ),
          if (isSelectd)
            const Align(
              alignment: Alignment.center,
              child: Icon(Icons.check, color: Colors.white),
            )
        ],
      ),
    );
  }
}
