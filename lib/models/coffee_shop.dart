import 'package:coffee_shop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier{
  //List of  available coffee
  final List <Coffee> _availableCoffee = [
    Coffee(
      name: 'Expresso', 
      price: "Ksh 1000",
      imagepath: "lib/image/expresso.png"),

    Coffee(
      name: 'Flat', 
      price: "Ksh 300", 
      imagepath: "lib/image/flat.png"),
    
    Coffee(
      name: 'Iced',
      price: "Ksh 800",
      imagepath: "lib/image/iced.png"),


    Coffee(
      name: 'Latte', 
      price: "Ksh 300", 
      imagepath: "lib/image/latte.png"),
    
    Coffee(
      name: 'Long',
      price: "Ksh 800",
      imagepath: "lib/image/long.png")
  ];

  //List of user cart
  final List <Coffee> _userCart= [];

  //get the available coffee
  List <Coffee> get availableCoffee => _availableCoffee;


  //get user cart

  List <Coffee> get userCart => _userCart;

  //Method to add coffee to the cart
  void addCoffee(Coffee coffee){
    _userCart.add(coffee);
    notifyListeners();
  }

  //Method to remove coffee from the cart
  void removeCoffee(Coffee coffee){
    _userCart.remove(coffee);
    notifyListeners();
  }


}