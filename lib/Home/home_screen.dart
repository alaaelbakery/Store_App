import 'package:flutter/material.dart';
import 'package:flutter_apps/datails_screen/details_screen.dart';
import 'package:flutter_apps/Category/category_screen.dart';
import 'package:flutter_apps/cart_screen/cart_screen.dart';

import '../widgets/category_item.dart';
import '../widgets/deals_item.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> title = ['enab', 'pumpkin', 'meat', 'fish'];

  final List<String> image = [
    'assets/images/enab.png',
    'assets/images/pumpkin.png',
    'assets/images/meat.png',
    'assets/images/fish.png',
  ];

  final List<int> color = [0xFFEDD0FF, 0xFFFD9BA0, 0xFFFACCCC, 0xFFFACCCC];
  final List<String> text = ['Apple', 'Banana', 'Avocado', 'Fish'];

  final List<String> images = [
    'assets/images/Apple.png',
    'assets/images/Banana.png',
    'assets/images/Avocado.png',
    'assets/images/fish.png',
  ];

  final List<String> price = [r'$ 4,99', r'$ 5,99', r'$ 4,99', r'$30,00'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Image.asset('assets/images/home.jpg'),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff6D3805),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'See ALL',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffFF5E00),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 130,
                child: ListView.builder(
                  itemCount: image.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: CategoryItem(
                        categimage: image[index],
                        categName: title[index],
                        bgColor: color[index],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popular deals',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff6D3805),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CartScrean()),
                      );
                    },
                    child: const Text(
                      'See ALL',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffFF5E00),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: price.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              nameFruit: text[index],
                              image: images[index],
                              priceFruit: price[index],
                            ),
                          ),
                        );
                      },
                      child: DealsItem(
                        image: images[index],
                        title: text[index],
                        price: price[index],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
