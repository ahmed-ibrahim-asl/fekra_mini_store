
import 'package:fekra_mini_store/components/bottom_nav_bar.dart';
import 'package:fekra_mini_store/pages/cart_page.dart';
import 'package:fekra_mini_store/pages/shop_page.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  int _selectedIndex = 0;

  void navigationBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to display 
  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          
          builder: (context) => IconButton(
          
            icon: const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),

            onPressed: () {
              Scaffold.of(context).openDrawer();
            },

          )

          ),
      ),

      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        child: Column(
          children: [
 
            const SizedBox(height: 60),

            Container(
              color: Colors.transparent,
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,

              child: Center(
                child: Image.asset(
                  'lib/pictures/logo2.png',
                  color: Colors.white,
                  height: 200,
                  fit: BoxFit.contain,
                )
              ),
            ),
            const SizedBox(height: 45),

            //? cool idea
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(
                color: Colors.grey[800],
              )
            ),

            ////////////////////////////////////////////////
            const Padding(
              padding: EdgeInsets.only(left: 25.0),

              child: ListTile(
                leading: Icon(Icons.home, color: Colors.white),
                title: Text('Home', style: TextStyle(color: Colors.white) ),
              ),
                
            ),
            ////////////////////////////////////////////////

            ////////////////////////////////////////////////
            const Padding(
              padding: EdgeInsets.only(left: 25.0),

              child: ListTile(
                leading: Icon(Icons.info, color: Colors.white),
                title: Text('About', style: TextStyle(color: Colors.white) ),
              ),
                
            ),
            ////////////////////////////////////////////////

            const Spacer(),
            ////////////////////////////////////////////////
            const Padding(
              padding: EdgeInsets.only(left: 25.0),

              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.white),
                title: Text('Logout', style: TextStyle(color: Colors.white) ),
              ),
                
            )
            ////////////////////////////////////////////////

  




          ],
        ),
      ),

      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigationBar(index),
      ),

      body: _pages[_selectedIndex],

    );
  }
}