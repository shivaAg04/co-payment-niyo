import 'package:flutter/material.dart';

class TransactionHistoryModel {
  final String title;
  final String subTitle;
  final String amount;
  final Widget icon;

  TransactionHistoryModel({
    required this.title,
    required this.subTitle,
    required this.amount,
    required this.icon,
  });
}
