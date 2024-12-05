import 'package:flutter/material.dart';
import 'package:sneakers_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> ShoeShop = [
    Shoe(
        name: "Zoom Freak",
        price: "300",
        imagePath: "./lib/images/sh2.png",
        description: "Best Ever"),
    Shoe(
        name: "Nike Air",
        price: "231",
        imagePath: "./lib/images/sh3.png",
        description: "Lightest Ever"),
    Shoe(
        name: "Nike Air Pro",
        price: "344",
        imagePath: "./lib/images/sh1.png",
        description: "Classy Look"),
    Shoe(
        name: "Air Jordan",
        price: "599",
        imagePath: "./lib/images/sh4.jpg",
        description: "You Can Fly With This Thing"),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return ShoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemToCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
