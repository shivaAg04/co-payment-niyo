import 'package:co_payment_niyo/util/my_color.dart';
import 'package:flutter/material.dart';

class CarouselWithDots extends StatefulWidget {
  @override
  _CarouselWithDotsState createState() => _CarouselWithDotsState();
}

class _CarouselWithDotsState extends State<CarouselWithDots> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              children: [
                PaymentHistoryCard(cardColor: MyColor.mainColor),
                PaymentHistoryCard(cardColor: MyColor.secondaryColor),
                PaymentHistoryCard(cardColor: Colors.orange),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _buildDots(),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildDots() {
    List<Widget> dots = [];
    for (int i = 0; i < 3; i++) {
      dots.add(
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 3),
          width: 7,
          height: 7,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentIndex == i ? MyColor.secondaryColor : Colors.grey,
          ),
        ),
      );
    }
    return dots;
  }
}

// card for payment history

class PaymentHistoryCard extends StatelessWidget {
  final Color cardColor;
  const PaymentHistoryCard({
    required this.cardColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: Colors.transparent), // Add border color
      ),
      width: MediaQuery.of(context).size.width * .7,
      child: const Row(
        children: [
          Text(
            '  Co.payment Cards',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Text(
            '**** 1121',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
