import 'package:flutter/material.dart';
import '../widgets/search_field.dart';
import '../widgets/category_card.dart';
import '../data/category_data.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Center(
                  child: Text('Find Products', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                ),
                SizedBox(height: 12),
                SearchField(hint: 'Search Store'),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(20),
          sliver: SliverGrid.builder(
            itemCount: categories.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              mainAxisExtent: 160,
            ),
            itemBuilder: (context, i) => CategoryCard(category: categories[i]),
          ),
        ),
      ],
    );
  }
}
