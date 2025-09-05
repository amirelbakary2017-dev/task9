import 'package:flutter/material.dart';
//import '../widgets/bottom_nav.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const ListTile(
              title: Text("Favourite", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  _favItem("assets/images/d2f3f8693088e089e4cfee3167faeb848cf9ea96.png", "Sprite Can", "\$1.50"),
                  _favItem("assets/images/f3cfc007e1a35a6c74c3d90bebf449a08c8072cf.png", "Diet Coke", "\$1.99"),
                  _favItem("assets/images/e3f6fb1693ed22eec33505ff5f6f4f54c442e1c5.png", "Apple & Grape Juice", "\$15.99"),
                  _favItem("assets/images/a6501a3ca88c17d9ec33d6b348ad9b9b3078ccfb.png", "Coca Cola Can", "\$4.99"),
                  _favItem("assets/images/5e28052a3a50959340e109824c42dd0c99b5f377.png", "Pepsi Can", "\$4.99"),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () {},
                child: const Text("Add All To Cart"),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _favItem(String img, String name, String price) {
    return ListTile(
      leading: Image.network(img, width: 40),
      title: Text(name),
      trailing: Text(price, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
