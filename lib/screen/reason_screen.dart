import 'package:co_payment_niyo/screen/new_card_screen.dart';
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
            // giving some space
            const SizedBox(
              height: 50,
            ),
            // back button
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: .3),
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
                  Icons.arrow_back_ios_new_rounded,
                  size: 16,
                  color: Colors.black, // Change color as needed
                ),
              ),
            ),
            // main reason for using smartpay
            Text(
              "Main Reason for using \nSmartPay",
              style: TextStyle(
                color: MyColor.secondaryColor,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            // giving some space
            const SizedBox(
              height: 10,
            ),
            // subtext
            const Text(
              "We need to know this for regulatory\nreasons.And also we are curious",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            // grid view for reasons
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
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const NewCardScreen(),
                  ),
                );
              },
              child: const Text("Continue"),
            ),
          ],
        ),
      ),
    );
  }
}
