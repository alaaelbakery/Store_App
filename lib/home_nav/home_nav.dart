import 'package:flutter/material.dart';
import 'package:flutter_apps/Category/category_screen.dart';
import 'package:flutter_apps/Home/home_screen.dart';
import 'package:flutter_apps/cart_screen/cart_screen.dart';
import 'package:flutter_apps/order_screen/order_screen.dart';
import 'package:flutter_apps/profile_screen/profile_screen.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({super.key});

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  int currentIndex = 0;

  final List<Widget> screens = [
    HomeScreen(),
    CategoryScreen(),
    CartScrean(),
    OrderScreen(),
    ProfileScrean(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: 'Orders',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        selectedItemColor: Color(0xffFF5E00),
        unselectedItemColor: Color(0xff6D3805),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
