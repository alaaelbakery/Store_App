import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  CartItem({
    super.key,
    required this.title,
    required this.image,
    required this.price,
    required this.count,
  });
  final String title;
  final String image;
  final String price;
  final int count;
  @override
  State<CartItem> createState() => _CartAtemState();
}

class _CartAtemState extends State<CartItem> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(widget.image, height: 60, width: 60),
              SizedBox(height: 16),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff6D3805),
                      ),
                    ),
                    SizedBox(height: 9),
                    Container(
                      padding: EdgeInsetsGeometry.symmetric(
                        vertical: 4,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadiusGeometry.circular(15),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (counter > 1) {
                                setState(() {
                                  counter--;
                                });
                              }
                            },
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.remove,
                                size: 16,
                                color: Color(0xff6D3805),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsGeometry.symmetric(
                              horizontal: 12,
                            ),
                            child: Text(
                              '$counter',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff6D3805),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                counter++;
                              });
                            },
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.add,
                                size: 16,
                                color: Color(0xff6D3805),
                              ),

                              //child: Icon(Icons.add,size: 16,color: Color(0xff6D3805),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Text(
                widget.price,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff6D3805),
                ),
              ),
            ],
          ),
        ),
        Divider(color: Colors.grey.shade300, thickness: 1.2, height: 12),
      ],
    );
  }
}
