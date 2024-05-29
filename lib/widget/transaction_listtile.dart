import 'package:co_payment_niyo/model/transaction_history_model.dart';
import 'package:flutter/material.dart';

import '../util/my_color.dart';

class TransactionListTile extends StatelessWidget {
  final TransactionHistoryModel transactionHistoryModel;
  const TransactionListTile({
    required this.transactionHistoryModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      leading: Container(
        //round corner
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10.0),
        ),
        height: 50,
        width: 50,
      ),
      title: Text(
        transactionHistoryModel.title,
        style: TextStyle(
            color: MyColor.secondaryColor,
            fontSize: 18.0,
            fontWeight: FontWeight.w500),
      ),
      subtitle: Text(transactionHistoryModel.subTitle),
      trailing: Text(
        transactionHistoryModel.amount,
        style: TextStyle(
            color: MyColor.secondaryColor,
            fontSize: 15.0,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
