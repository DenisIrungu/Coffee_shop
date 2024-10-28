import 'package:coffee_shop/components/coffee_tile.dart';
import 'package:coffee_shop/models/coffee.dart';
import 'package:coffee_shop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key,
  });

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  void deleteUserCart(Coffee coffee){
    Provider.of<CoffeeShop>(context, listen: false).removeCoffee(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder:(context, value, child) => SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text('Your Cart', style: TextStyle(fontSize: 30),),
          ),
          SizedBox(height: 20,),

          Expanded(child: ListView.builder(
            itemCount: value.userCart.length,
            itemBuilder: (context, index){
            //Individual item
            Coffee eachCoffee= value.userCart[index];

            //Return list tile
            return CoffeeTile(
              coffee: eachCoffee, 
              onPressed:() => deleteUserCart(eachCoffee),
              icon: Icon(Icons.delete));
          }))


        ],
      ),
    )
);
  }
}