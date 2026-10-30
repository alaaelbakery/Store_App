import 'package:flutter/material.dart';
import 'package:flutter_apps/cart_screen/cart_screen.dart';

class DetailsScreen extends StatefulWidget {
  final String nameFruit;
  final String image;
  final String priceFruit;

  const DetailsScreen({
    super.key,
    required this.nameFruit,
    required this.image,
    required this.priceFruit,
  });

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isFavorite = false;
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const BackButton(color: Color(0xff6D3805)),
        title: Text(
          '${widget.nameFruit} Details',
          style: const TextStyle(color: Color(0xff6D3805), fontSize: 18),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  height: 200,
                  child: Image.asset(widget.image, fit: BoxFit.contain),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                widget.nameFruit,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6D3805),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    widget.priceFruit,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff6D3805),
                    ),
                  ),
                  const Text(
                    ' /st',
                    style: TextStyle(fontSize: 14, color: Color(0xff6D3805)),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'Golden Ripe Alphonso mangoes delivered to your house in the most hygienic way ever. Best for eating plain but can also be made into shakes and cakes.',
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff6D3805),
                  height: 1.5,
                ),
              ),

              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.remove,
                              size: 20,
                              color: Color(0xff6D3805),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CartScrean(),
                                ),
                              );
                              if (counter > 1) {
                                setState(() {
                                  counter--;
                                });
                              }
                            },
                          ),
                          Text(
                            '$counter',
                            style: const TextStyle(
                              color: Color(0xff6D3805),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.add,
                              size: 20,
                              color: Color(0xff6D3805),
                            ),
                            onPressed: () {
                              setState(() {
                                counter++;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),

                  IconButton(
                    onPressed: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: isFavorite
                          ? Color(0xffFF5E00)
                          : const Color(0xffFF5E00),
                      size: 28,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CartScrean()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF6E1E),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text('Add To cart'),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
