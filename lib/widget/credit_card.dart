import 'package:flutter/material.dart';


class CreditCardScreen extends StatefulWidget {
  @override
  _CreditCardScreenState createState() => _CreditCardScreenState();
}

class _CreditCardScreenState extends State<CreditCardScreen> {
  Color _cardColor = Colors.blue;

  final List<Color> _cardColors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.purple,
    Colors.orange,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Credit Card Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildColorChoices(),
            SizedBox(height: 20),
            _buildCreditCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildColorChoices() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _cardColors.map((color) {
        return GestureDetector(
          onTap: () {
            setState(() {
              _cardColor = color;
            });
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 4.0),
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black,
                width: _cardColor == color ? 2.0 : 1.0,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildCreditCard() {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: _cardColor,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 20,
            child: Image.asset(
              'assets/chip.png',
              width: 50,
              height: 50,
            ),
          ),
          Positioned(
            bottom: 40,
            left: 20,
            child: Text(
              '1234 5678 9012 3456',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Text(
              'CARDHOLDER NAME',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}