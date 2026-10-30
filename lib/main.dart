import 'package:flutter/material.dart';
import 'package:flutter_apps/home_nav/home_nav.dart';
import 'package:flutter_apps/sign_up1/sign_up1.dart';
import 'package:flutter_apps/widgets/cart_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:HomeNav()
    );
  }
}
//

