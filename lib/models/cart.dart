import 'package:flutter/material.dart';

import 'product.dart';

class Cart extends ChangeNotifier{
  // list of products for sale  
  List<Product> productShop = [

    Product(
      name: "Arduino RP2040",
      price: "20", 
      imagePath: "lib/pictures/arduino_rp2040.jpg",
      description: "Versatile microcontroller with dual-core processor."
    ),

    Product(
      name: "Arduino Uno R4",
      price: "25", 
      imagePath: "lib/pictures/Arduino_Uno_R4.jpg",
      description: "Next-gen Uno with enhanced features and faster processing."
    ),

    Product(
      name: "Arduino Uno",
      price: "18", 
      imagePath: "lib/pictures/Arduino_Uno.jpg",
      description: "Classic microcontroller for beginners and makers."
    ),

    Product(
      name: "Esp 32",
      price: "22", 
      imagePath: "lib/pictures/esp32.jpg",
      description: "Powerful Wi-Fi and Bluetooth microcontroller."
    ),

    Product(
      name: "Raspberry Pi 5",
      price: "60", // Updated price in USD
      imagePath: "lib/pictures/pi5.jpg",
      description: "High-performance single-board computer for various projects."
    ),
  ];

  // List of items of user cart 
  List<Product> userCart = [];

  // add item sto cart
  void addItemToCart(Product product) {
    userCart.add(product);
    notifyListeners();
  }

  
  // remove item from cart
  void removeItemFromCart(Product product) {
    userCart.remove(product);
    notifyListeners();
  }

  // get content of user cart
  List<Product> getUserCart() {
    return userCart;
  }  

  // get list of products for sale
  List<Product> getProductsList(){
    return productShop;
  }

}
