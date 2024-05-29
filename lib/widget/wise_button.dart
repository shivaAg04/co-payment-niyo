import 'package:flutter/material.dart';

import '../util/my_color.dart';

class WiseButton extends StatelessWidget {
  final int currentIndex;
  final String title;
  final int selfIndex;
  const WiseButton({
    required this.currentIndex,
    required this.title,
    required this.selfIndex,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      //corner radius
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color:
            currentIndex == selfIndex ? Colors.grey[100] : Colors.transparent,
      ),
      child: Text(
        title,
        style: TextStyle(
            color: currentIndex == selfIndex
                ? MyColor.secondaryColor
                : Colors.grey[500],
            fontSize: 18.0,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
