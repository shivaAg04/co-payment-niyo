import 'package:co_payment_niyo/util/my_color.dart';
import 'package:flutter/material.dart';

import '../util/my_dummy_data.dart';
import '../widget/line_chart.dart';
import '../widget/slider.dart';
import '../widget/transaction_listtile.dart';
import '../widget/wise_button.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // virtual card
          const SizedBox(height: 50.0),
          // back button and text
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10.0),
                height: 35,
                width: 35,
                //border
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.grey), // Add border color
                ),

                child: InkWell(
                  onTap: () {
                    // Handle back button press
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_outlined,
                    size: 20,
                    // Change color as needed
                  ),
                ),
              ),
              const Spacer(),
              const Text(
                'Activity',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .25,
              ),
              Container(
                margin: const EdgeInsets.only(left: 10.0),
                height: 35,
                width: 35,
                //border
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.grey), // Add border color
                ),

                child: InkWell(
                  onTap: () {
                    // Handle back button press
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.more_horiz, size: 20,
                    // Change color as needed
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .04,
              ),
            ],
          ),
          const SizedBox(height: 30.0),
          // container for payments card
          Container(
            height: 80,
            color: Colors.grey[200],
            child: CarouselWithDots(),
          ),
          const SizedBox(height: 15.0),
          // graph and past transaction text
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // container for graph
                  Container(
                    //corner radius
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(
                          color: Colors.grey.shade200), // Add border color
                    ),
                    height: 450,

                    child: Column(
                      children: [
                        const SizedBox(height: 15.0),
                        Text(
                          'Total Spending',
                          style: TextStyle(
                              color: Colors.grey[500], // MyColor.secondaryColo
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          '\$5,215.00',
                          style: TextStyle(
                              color: MyColor.secondaryColor,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),

                        const SizedBox(height: 10.0),
                        // day week month year
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _currentIndex = 0;
                                });
                              },
                              child: WiseButton(
                                currentIndex: _currentIndex,
                                title: 'Day',
                                selfIndex: 0,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _currentIndex = 1;
                                });
                              },
                              child: WiseButton(
                                currentIndex: _currentIndex,
                                title: 'Week',
                                selfIndex: 1,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _currentIndex = 2;
                                });
                              },
                              child: WiseButton(
                                currentIndex: _currentIndex,
                                title: 'Month',
                                selfIndex: 2,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _currentIndex = 3;
                                });
                              },
                              child: WiseButton(
                                currentIndex: _currentIndex,
                                title: 'Year',
                                selfIndex: 3,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 30,
                        ),
                        // graph

                        const Expanded(child: LineChartSample2()),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  // past transaction text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Transaction',
                        style: TextStyle(
                            color: MyColor.secondaryColor,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 50,
                        child: Row(
                          children: [
                            Text(
                              "All",
                              style: TextStyle(
                                  color: MyColor.secondaryColor,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500),
                            ),
                            const Icon(Icons.keyboard_arrow_down_sharp)
                          ],
                        ),
                      ),
                    ],
                  ),
                  // list of past transactions
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return TransactionListTile(
                          transactionHistoryModel:
                              MyDummyData.transactionHistory[index],
                        );
                      },
                      itemCount: 10,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
