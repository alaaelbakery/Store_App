import 'package:flutter/material.dart';
import 'package:flutter_apps/widgets/category_item.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  final List<String> text = [
    'Fruits',
    'Vegetables',
    'Meat',
    'Fish',
    'Sea food',
    'Juice',
    'Egg & Milk',
    'Ice cream',
    'Cake',
  ];

  final List<String> categImage = [
    'assets/images/enab.png',
    'assets/images/pumpkin.png',
    'assets/images/meat.png',
    'assets/images/fish.png',
    'assets/images/shrimp.png',
    'assets/images/juice.png',
    'assets/images/egg&milk.png',
    'assets/images/ice_cream.png',
    'assets/images/cake.png',
  ];

  final List<int> bgColor = [
    0xffEDD0FF,
    0xffffFD9BA,
    0xffffFACCCC,
    0xffffFACCCC,
    0xffFFF0BA,
    0xffD1F3D5,
    0xffD0E8FF,
    0xffFFDDF2,
    0xffFFE4C4,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('CATEGORIES'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(65),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
      ),
      body: GridView.builder(
        itemCount: categImage.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return CategoryItem(
            categimage: categImage[index],
            categName: text[index],
            bgColor: bgColor[index],
          );
        },
      ),
    );
  }
}
