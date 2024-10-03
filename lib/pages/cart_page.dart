import 'package:fekra_mini_store/models/cart.dart';
import 'package:fekra_mini_store/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/cart_item.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {

    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        
        children: [
          const Text(
            'My Cart',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          
          const SizedBox(height: 20),


          Expanded(
            child: ListView.builder(
              itemCount: value.getUserCart().length,
              itemBuilder: (context, index){
                Product individualProduct = value.getUserCart()[index];

                return CartItem(product: individualProduct,);
              },
            )

          ),

        ],

      )
    
    
    );


  }
}