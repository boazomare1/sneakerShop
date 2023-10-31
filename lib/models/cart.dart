import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom Freak',
        price: '246',
        imagePath: 'assets/images/zmfr.png',
        description: ''),
    Shoe(
        name: 'Jordan Loyal',
        price: '246',
        imagePath: 'assets/images/n4.png',
        description: ''),
    Shoe(
        name: 'Jordan Air',
        price: '246',
        imagePath: 'assets/images/jrair.png',
        description: ''),
    Shoe(
        name: 'Air Max',
        price: '246',
        imagePath: 'assets/images/airmax.png',
        description: ''),
    Shoe(
        name: 'Air Jordan',
        price: '246',
        imagePath: 'assets/images/n1.png',
        description: ''),
  ];
  //list of items in user cart
  List<Shoe> userCart = [];
  //get list of items for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add item to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
