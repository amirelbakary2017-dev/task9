import 'package:flutter/material.dart';
// ignore: unused_import

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _cartItem("assets/images/0c425b7d8f0836dfb36395e62d0c84d6b0af4cf0.png", "Bell Pepper Red", "\$4.99", 1),
          _cartItem("assets/images/10f6d5b484482669b38064b6039c1e9dd1e416f7.png", "Egg Chicken Red", "\$1.99", 2),
          _cartItem("assets/images/cdd49d63a82af5cf4cfd7f408c9a57cd24bf47c9.png", "Organic Bananas", "\$3.00", 1),
          _cartItem("assets/images/accb1df0583c96a67f2ad989598f353de49e5a14.png", "Ginger", "\$2.99", 1),
        ],
      ),
    );
  }

  Widget _cartItem(String img, String title, String price, int qty) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Image.network(img, height: 50, width: 50),
          const SizedBox(width: 12),
          Expanded(
            child: Text(title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          ),
          Column(
            children: [
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.remove)),
                  Text("$qty"),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                ],
              ),
              Text(price, style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          )
        ],
      ),
    );
  }
}

class CustomBottomNav {
  const CustomBottomNav({required int currentIndex});
}
