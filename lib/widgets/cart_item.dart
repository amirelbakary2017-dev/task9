import 'package:flutter/material.dart';
import '../models/cart_model.dart';

class CartItem extends StatelessWidget {
  final CartModel item;
  const CartItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Image.asset(item.image, height: 50, width: 50),
          const SizedBox(width: 12),
          Expanded(
            child: Text(item.title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          ),
          Column(
            children: [
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.remove)),
                  Text("${item.qty}"),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                ],
              ),
              Text(item.price, style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          )
        ],
      ),
    );
  }
}
