import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_app/components/cart_item.dart';
import 'package:sneakers_app/models/cart.dart';
import 'package:sneakers_app/models/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "My Cart",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),

                const SizedBox(height: 20,),

                Expanded(child: ListView.builder(
                  itemCount: value.getUserCart().length,
                  itemBuilder: (context,Index){
                    Shoe individualShoe = value.getUserCart()[Index];
                    return CartItem(shoe: individualShoe);
                }))
              ],
            ));
  }
}
