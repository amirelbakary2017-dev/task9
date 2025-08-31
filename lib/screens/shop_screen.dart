import 'package:flutter/material.dart';
import '../widgets/search_field.dart';
import '../widgets/section_header.dart';
import '../widgets/product_card.dart';
import '../data/product_data.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 16, 20, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SearchField(hint: 'Search Store'),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(child: SectionHeader(title: 'Exclusive Offer')),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 190,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemCount: productsExclusive.length,
              separatorBuilder: (_, __) => const SizedBox(width: 16),
              itemBuilder: (context, i) => ProductCard(product: productsExclusive[i]),
            ),
          ),
        ),
        SliverToBoxAdapter(child: SectionHeader(title: 'Best Selling')),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          sliver: SliverGrid.builder(
            itemCount: productsBest.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 210,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
            ),
            itemBuilder: (context, i) => ProductCard(product: productsBest[i]),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 24)),
      ],
    );
  }
}
