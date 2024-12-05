import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_app/models/cart.dart';
import 'package:sneakers_app/models/shoe.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  void removeItemFromCart(){
    Provider.of<Cart>(context, listen: false).removeItemToCart(widget.shoe);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
      margin: EdgeInsets.only(bottom: 10, top: 10),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(onPressed: removeItemFromCart, icon: Icon(Icons.delete)),
      ),
    );
  }
}
