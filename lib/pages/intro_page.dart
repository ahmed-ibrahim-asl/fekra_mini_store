import 'package:fekra_mini_store/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      body: Column(
        children: [
          /**
           * Content of page
           * 1. logo
           * 2. slang of brand 
           * 3. title 
           * 4. start now button
          */

          const SizedBox(height: 95),
          // 1. Logo
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Center(
              child: Image.asset(
                'lib/pictures/logo2.png',
                alignment: Alignment.center,
                height: 300,
              ),
            ),
          ),


          // 2. slang 
          const Text(
            "Make it happen",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),

          const SizedBox(height: 24),

          // 3. Title
          const Text(
            'Cutting-edge gadgets and custom builds crafted with precision',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 20),

          // 4. start now button
          GestureDetector(
            //! new way
            onTap: () => Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => const HomePage(),
                ),
              ),
                
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
              
                padding: const EdgeInsets.all(25),
                
                child: const Center(
                  child: Text(
                    'Shop Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28
                    )
                  )
                ),
                
              ),
            ),
          )


        ],
      ),
    );
  }
}