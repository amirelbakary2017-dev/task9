import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("Product Detail"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset("assets/images/apple.png", height: 200),
            const SizedBox(height: 20),
            const Text("Natural Red Apple",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text("1kg, Price"),
            const SizedBox(height: 16),
            const Text(
              "\$4.99",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Product Detail",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            const Text(
                "Apples are nutritious. Apples may be good for weight loss. "
                "Apples may be good for your heart. As part of a healthful "
                "and varied diet."),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {},
              child: const Text("Add To Basket"),
            )
          ],
        ),
      ),
    );
  }
}
