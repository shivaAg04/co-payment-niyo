import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:co_payment_niyo/screen/activity_screen.dart';
import 'package:co_payment_niyo/screen/new_card_screen.dart';
import 'package:co_payment_niyo/screen/reason_screen.dart';
import 'package:co_payment_niyo/screen/transaction_history.dart';
import 'package:co_payment_niyo/util/my_color.dart';
import 'package:flutter/material.dart';

const List<TabItem> items = [
  TabItem(
    icon: Icons.home_outlined,
    title: 'Home',
  ),
  TabItem(
    icon: Icons.credit_card,
    title: 'My Card',
  ),
  TabItem(
    icon: Icons.document_scanner_outlined,
    title: 'Wishlist',
  ),
  TabItem(
    icon: Icons.add_chart_sharp,
    title: 'Activity',
  ),
  TabItem(
    icon: Icons.account_box,
    title: 'profile',
  ),
];
// list of widget
final List<Widget> widget = [
  const ReasonScreen(),
  const NewCardScreen(),
  const TransactionHistoryScreen(),
  const ActivityScreen(),
  const ReasonScreen(),
];

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int visit = 3;
  double height = 30;
  Color colorSelect = MyColor.secondaryColor;
  Color color = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBarCreative(
        items: items,
        backgroundColor: Colors.white,
        color: color,
        colorSelected: colorSelect,
        indexSelected: visit,
        highlightStyle: const HighlightStyle(
            background: Colors.green,
            color: Colors.white,
            sizeLarge: true,
            isHexagon: false,
            elevation: 2),
        onTap: (int index) => setState(() {
          visit = index;
        }),
      ),
      body: widget[visit],
    );
  }
}
