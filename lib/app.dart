import 'package:flutter/material.dart';
import 'screens/shop_screen.dart';
import 'screens/explore_screen.dart';
import 'screens/placeholder_screen.dart';

class NectarApp extends StatelessWidget {
  const NectarApp({super.key});

  @override
  Widget build(BuildContext context) {
    const seed = Color(0xFF53B175);
    final scheme = ColorScheme.fromSeed(seedColor: seed);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nectar UI',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: scheme.copyWith(surface: const Color(0xFFF9F9F9)),
        fontFamily: 'SF',
      ),
      home: const AppShell(),
    );
  }
}

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  int _index = 0;

  final _pages = [
    ShopScreen(),
    ExploreScreen(),
    PlaceholderScreen(title: 'Cart'),
    PlaceholderScreen(title: 'Favourite'),
    PlaceholderScreen(title: 'Account'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(child: _pages[_index]),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: (i) => setState(() => _index = i),
        backgroundColor: Colors.white,
        // ignore: deprecated_member_use
        indicatorColor: Theme.of(context).colorScheme.primary.withOpacity(.12),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.storefront_outlined), label: 'Shop'),
          NavigationDestination(icon: Icon(Icons.explore_outlined), label: 'Explore'),
          NavigationDestination(icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
          NavigationDestination(icon: Icon(Icons.favorite_border), label: 'Favourite'),
          NavigationDestination(icon: Icon(Icons.person_outline), label: 'Account'),
        ],
      ),
    );
  }
}
