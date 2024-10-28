import 'package:coffee_shop/components/myBottomNavBar.dart';
import 'package:coffee_shop/constfiles.dart';
import 'package:coffee_shop/pages/cart.dart';
import 'package:coffee_shop/pages/shop.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _selectedIndex= 0;

  void navigateBottomBar(int index){
   setState(() {
      _selectedIndex= index;
   });
  }
final List<Widget> _pages= [
   MyShop(),
   MyCart(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],

    );
  }
}