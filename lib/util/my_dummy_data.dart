// Fake data for the app
// Create a new file named my_dummy_data.dart inside the util folder and add the following code:
import 'package:co_payment_niyo/model/transaction_history_model.dart';
import 'package:flutter/material.dart';

class MyDummyData {
  static const List<String> reason = [
    "Spend or\nsave daily",
    "Fast my\ntransactions",
    "Payment to\nfriends",
    "Online\nPayments",
    "Spend while\ntraveling",
    " Your financial\nassets"
  ];
  // list of icons
  static const List<Icon> icon = [
    const Icon(Icons.settings_input_composite_rounded),
    const Icon(Icons.flash_auto_sharp),
    const Icon(Icons.people),
    const Icon(Icons.wallet_sharp),
    const Icon(Icons.wallet_travel_outlined),
    const Icon(Icons.assist_walker_sharp),
  ];

  // list of colors
  static const List<bool> isColor = [
    true,
    false,
    false,
    true,
    false,
    false,
  ];

  // list of transaction history using model
  static List<TransactionHistoryModel> transactionHistory = [
    TransactionHistoryModel(
      title: 'Amazon',
      subTitle: 'Payment to friends',
      amount: '-\$250.00',
      icon: Image.asset('assets/images/amazon.png'),
    ),
    TransactionHistoryModel(
      title: 'Sports',
      subTitle: 'Payment',
      amount: '-\$100.00',
      icon: const Icon(
        Icons.sports_basketball,
        color: Colors.green,
      ),
    ),
    TransactionHistoryModel(
      title: 'Bank of America',
      subTitle: 'Payment to friends',
      amount: '-\$8650.00',
      icon: const Icon(
        Icons.currency_exchange_sharp,
        color: Colors.black,
      ),
    ),
    TransactionHistoryModel(
      title: 'Bitcoin',
      subTitle: 'Deposite',
      amount: '-\$150.00',
      icon: Icon(
        Icons.currency_bitcoin_outlined,
        color: Colors.yellow,
      ),
    ),
    TransactionHistoryModel(
      title: 'Paypal',
      subTitle: 'Freelance',
      amount: '-\$50.00',
      icon: Icon(Icons.paypal),
    ),
    TransactionHistoryModel(
      title: 'Payment',
      subTitle: 'Payment to friends',
      amount: '-\$ 50.00',
      icon: Icon(Icons.people),
    ),
    TransactionHistoryModel(
      title: 'Payment',
      subTitle: 'Payment to friends',
      amount: '-\$ 50.00',
      icon: Icon(Icons.people),
    ),
    TransactionHistoryModel(
      title: 'Payment',
      subTitle: 'Payment to friends',
      amount: '-\$ 50.00',
      icon: Icon(Icons.people),
    ),
  ];
}
