import 'package:flutter/material.dart';

class CounterWidget extends StatelessWidget {
  final int count;
  final VoidCallback? onIncrement;
  final VoidCallback? onDecrement;

  const CounterWidget({
    super.key,
    required this.count,
    this.onIncrement,
    this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // زر الخصم (-) مربع بحواف خفيفة
        InkWell(
          onTap: onDecrement,
          borderRadius: BorderRadius.circular(4),
          child: Container(
            width: 22,
            height: 22,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Icon(Icons.remove, size: 14, color: Colors.grey.shade700),
          ),
        ),

        // رقم الكاونتر
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            '$count',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
        ),

        // زر الإضافة (+) مربع بحواف خفيفة
        InkWell(
          onTap: onIncrement,
          borderRadius: BorderRadius.circular(4),
          child: Container(
            width: 22,
            height: 22,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Icon(Icons.add, size: 14, color: Colors.grey.shade700),
          ),
        ),
      ],
    );
  }
}
