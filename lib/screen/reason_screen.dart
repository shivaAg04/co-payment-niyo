import 'package:co_payment_niyo/util/my_color.dart';
import 'package:co_payment_niyo/util/my_dummy_data.dart';
import 'package:flutter/material.dart';

import '../widget/reason_box.dart';

class ReasonScreen extends StatelessWidget {
  const ReasonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Main Reason for using \nSmartPay",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 120, 218),
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "We need to know this for regulatory\nreasons.And also we are curious",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.3,
                  crossAxisCount: 2,
                ),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ReasonBox(
                        reason: MyDummyData.reason[index],
                        icon: MyDummyData.icon[index],
                        isColor: MyDummyData.isColor[index]),
                  );
                },
              ),
            ),
            // button for moving to next screen
            MaterialButton(
                minWidth: double.infinity,
                color: MyColor.secondaryColor,
                textColor: Colors.white,
                padding: const EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {},
                child: const Text("Continue"))
          ],
        ),
      ),
    );
  }
}
