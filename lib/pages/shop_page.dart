import 'package:fekra_mini_store/components/product_tile.dart';
import 'package:fekra_mini_store/models/cart.dart';
import 'package:fekra_mini_store/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addProductToCart(Product product) {
    Provider.of<Cart>(context, listen: false).addItemToCart(product);

    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('Succesfully added!'),
        content: Text('Check your cart'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),

      )
    
    );

  }


  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(

      /**
       * 1. search bar 
       * 2. message 
       * 3. hot picks
      */

      children: [
        // search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(

            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8)
         
          ),

          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: [
              Text(
                'Search',
                style: TextStyle(color: Colors.grey),
              ),

              Icon(Icons.search, color: Colors.grey)
            ]

          ),
        ),
      
        // message keep user engaged 

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            'You are one step a way from Achieving your Idea',
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),

        // hot picks to buyyyy

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
          
            children: [
              Text(
                'Hot Picks 🔥',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24
                ),
              ),
          
              Text(
                'See all',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              )
            ],
          
          ),
        ),

        const SizedBox(height: 10),

        // list of products in sale 
        Expanded(
          child: ListView.builder(
            itemCount: value.getProductsList().length, // Specify how many items
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {

              // get products from product list 
              Product product = value.getProductsList()[index];


              return ProductTile(product: product, onTap: () => addProductToCart(product) );
            }
              
          ),
        )
      ],

    ),
  
  );
  
  
  }
}



              




