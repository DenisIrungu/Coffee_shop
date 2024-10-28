import 'package:coffee_shop/components/coffee_tile.dart';
import 'package:coffee_shop/models/coffee.dart';
import 'package:coffee_shop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyShop extends StatefulWidget {
  const MyShop({super.key});

  @override
  State<MyShop> createState() => _MyShopState();
}

class _MyShopState extends State<MyShop> {
//Add to cart
void addToCart (Coffee coffee){
  Provider.of<CoffeeShop>(context, listen: false).addCoffee(coffee);
//Notify the user
showDialog(context: context, builder:(context) => AlertDialog(
  title: Text("Successfully aded to the cart"),
)
);
}


  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder:(context, value, child) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            //Heading
            const Text('How would like your coffee?', style: TextStyle(fontSize: 40),),
          
          const SizedBox(height: 25,),
          // List of Coffees
          Expanded(child: ListView.builder(
            itemCount: value.availableCoffee.length,
            itemBuilder: (context, index) {
            //Individual coffee
          Coffee eachCoffee= value.availableCoffee[index];

            //Return a ListTile by name
          return CoffeeTile(
            coffee: eachCoffee,
            onPressed: () => addToCart(eachCoffee),
            icon: Icon(Icons.add),);
          }))

        
            
          ],
        ),
      ),
    ));
  }
}