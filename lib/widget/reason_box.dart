import 'package:co_payment_niyo/util/my_color.dart';
import 'package:flutter/material.dart';

class ReasonBox extends StatelessWidget {
  const ReasonBox(
      {Key? key,
      required this.reason,
      required this.icon,
      required this.isColor})
      : super(key: key);

  final String reason;
  final Icon icon;
  final bool isColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isColor ? MyColor.mainColor : Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2.0,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // icon
          Icon(
            icon.icon,
            color: isColor ? Colors.white : Colors.black,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            reason,
            style: TextStyle(
              fontSize: 16,
              color: isColor ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
