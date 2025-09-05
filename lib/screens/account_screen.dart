import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage("assets/images/profile.png"),
              radius: 24,
            ),
            title: const Text("Afsar Hossen"),
            subtitle: const Text("afsar@email.com"),
            trailing: IconButton(
              icon: const Icon(Icons.edit, color: Colors.green),
              onPressed: () {},
            ),
          ),
          const Divider(),
          _accountItem("Orders", Icons.shopping_bag),
          _accountItem("My Details", Icons.person_outline),
          _accountItem("Delivery Address", Icons.location_on_outlined),
          _accountItem("Payment Methods", Icons.credit_card),
          _accountItem("Promo Card", Icons.card_giftcard),
          _accountItem("Notifications", Icons.notifications_outlined),
          _accountItem("Help", Icons.help_outline),
          _accountItem("About", Icons.info_outline),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              minimumSize: const Size(double.infinity, 50),
            ),
            onPressed: () {},
            child: const Text("Log Out"),
          )
        ],
      ),
    );
  }

  Widget _accountItem(String title, IconData icon) {
    return ListTile(
      leading: Icon(icon, color: Colors.green),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }
}
