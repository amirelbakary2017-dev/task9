import 'package:flutter/material.dart';
import '../widgets/cart_item.dart';
import '../data/cart_data.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          title: Text("My Cart"),
          centerTitle: true,
          floating: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        SliverPadding(
          padding: const EdgeInsets.all(20),
          sliver: SliverList.separated(
            itemCount: cartItems.length,
            itemBuilder: (context, i) => CartItem(item: cartItems[i]),
            separatorBuilder: (_, __) => const SizedBox(height: 12),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/checkout');
              },
              child: const Text("Go to Checkout"),
            ),
          ),
        )
      ],
    );
  }
}
