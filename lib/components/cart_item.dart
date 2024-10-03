import 'package:fekra_mini_store/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/product.dart';



class CartItem extends StatefulWidget {
  
  Product product;

  CartItem({
    super.key,
    required this.product
  
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.product);
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
        ),
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(8),
      child: ListTile(
        leading: Image.asset(widget.product.imagePath),
        title: Text(widget.product.name),
        subtitle: Text('\$${widget.product.price}'),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: removeItemFromCart ,
        ),
      ),
    );
  }
}