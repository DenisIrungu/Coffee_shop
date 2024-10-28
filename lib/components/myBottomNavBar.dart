import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;

  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.all(25),
      child: GNav(
        onTabChange: (valaue) => onTabChange !(valaue),
        color: Colors.grey[400],
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.grey[700],
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade300,
        tabBorderRadius: 24,
        tabs: const [
        //Home Button
        GButton(
          icon: Icons.home,
          text: 'Shop',),
        //Cart Button
          GButton(icon: Icons.shopping_bag,
          text: 'Cart',)
      ],),
    );
  }
}