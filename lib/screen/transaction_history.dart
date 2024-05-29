import 'package:co_payment_niyo/util/my_color.dart';
import 'package:co_payment_niyo/util/my_dummy_data.dart';
import 'package:co_payment_niyo/widget/transaction_listtile.dart';
import 'package:flutter/material.dart';

class TransactionHistoryScreen extends StatelessWidget {
  const TransactionHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(
            200.0), // Here you can specify the custom height
        child: Container(
          padding: const EdgeInsets.only(left: 20.0),
          color: MyColor.mainColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50.0),
              // back button
              Container(
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
                    Icons.arrow_back_ios_new_rounded,
                    size: 16,
                    color: Colors.white, // Change color as needed
                  ),
                ),
              ),
              // Title
              const SizedBox(height: 18.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Current balance',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        '\$ 12,256.00',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Bank account : 2564 8546 8421 1121 ',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 18.0),
                    child: CircleAvatar(
                      radius: 25.0,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.refresh_sharp,
                        size: 25.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // transaction history
            const SizedBox(height: 20.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transaction History',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(Icons.search)
              ],
            ),

            const SizedBox(height: 20.0),
            Text(
              "Today, Mar 20",
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600]),
            ),
            // transaction list
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return TransactionListTile(
                    transactionHistoryModel:
                        MyDummyData.transactionHistory[index],
                  );
                },
              ),
            ),
            // transaction  date
            Text(
              "Yesterday, Dec 28",
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600]),
            ),
            // transaction list
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return TransactionListTile(
                    transactionHistoryModel:
                        MyDummyData.transactionHistory[index + 2],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
