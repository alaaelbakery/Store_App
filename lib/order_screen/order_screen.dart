import 'package:flutter/material.dart';

import 'package:flutter_apps/widgets/order_item.dart';

class OrderScreen extends StatelessWidget {
  OrderScreen({super.key});

  final List<String> orderNumber = ['Order #345', 'Order #346', 'Order #347'];

  final List<String> orderStatus = ['Delivered', 'Cancelled', 'Delivered'];

  final List<String> orderDate = [
    'October 26, 2014',
    'October 14, 2016',
    'July 26, 2017',
  ];

  final List<String> orderPrice = ['\$700', '\$452', '\$281'];

  final List<Color> statusColor = [
    const Color(0xFF8CE07A),
    const Color(0xFFFF6B6B),
    const Color(0xFF8CE07A),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: SizedBox.shrink(),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Orders',
            style: TextStyle(
              color: Color(0xffFF5E00),
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          bottom: const TabBar(
            indicatorColor: Color(0xffFF5E00),
            indicatorWeight: 3,
            labelColor: Color(0xffFF5E00),
            unselectedLabelColor: Color(0xff6D3805),
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
            tabs: [
              Tab(text: 'Ongoing'),
              Tab(text: 'History'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_basket_outlined,
                    size: 80,
                    color: Colors.grey.shade300,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'No items',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 8),
              itemCount: orderNumber.length,
              itemBuilder: (context, index) {
                return OrderItem(
                  orderNumber: orderNumber[index],
                  orderStatus: orderStatus[index],
                  orderDate: orderDate[index],
                  orderPrice: orderPrice[index],
                  statusColor: statusColor[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
