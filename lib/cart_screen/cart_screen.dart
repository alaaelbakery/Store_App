import 'package:flutter/material.dart';
import 'package:flutter_apps/datails_screen/details_screen.dart';

import '../widgets/cart_item.dart';

class CartScrean extends StatefulWidget {
  CartScrean({super.key});
  @override
  State<CartScrean> createState() => _CartScreanState();
}

class _CartScreanState extends State<CartScrean> {
  List<String> title = [
    'Red Apple',
    'Orginal Banana',
    'Avocado Bowl',
    'Salmon',
  ];

  List<String> price = ['\$4,99 kg', '\$5,99 kg', '\$24 st', '\$50 kg'];

  List<int> count = [2, 2, 1, 2];

  List<String> image = [
    'assets/images/Apple.png',
    'assets/images/Banana.png',
    'assets/images/Avocado.png',
    'assets/images/Salamon.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        title: const Text(
          'Cart',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Color(0xffFF5E00),
          ),
        ),
        centerTitle: true,
      ),

      body: Column(
        children: [
          const SizedBox(height: 17),
          Expanded(
            child: ListView.builder(
              itemCount: title.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                  background: Container(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: const Color(0xffA42B32),
                      // التصحيح هنا: استخدام BorderRadius بدلاً من BorderRadiusGeometry
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.delete_outlined,
                      color: Color(0xffFFFFFF),
                      size: 28,
                    ),
                  ),
                  onDismissed: (direction) {
                    setState(() {
                      // حذف العنصر من القوائم
                      title.removeAt(index);
                      image.removeAt(index);
                      price.removeAt(index);
                      count.removeAt(index);
                    });
                  },
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            nameFruit: title[index],
                            image: image[index],
                            priceFruit: price[index],
                          ),
                        ),
                      );
                    },
                    child: CartItem(
                      title: title[index],
                      image: image[index],
                      price: price[index],
                      count: count[index],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF5E00),
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartScrean()),
                );
              },
              child: const Text(
                'CheckOut',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
