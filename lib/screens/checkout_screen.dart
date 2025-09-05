import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Checkout")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              title: Text("Delivery"),
              trailing: Text("Select Method"),
            ),
            const Divider(),
            const ListTile(
              title: Text("Payment"),
              trailing: Icon(Icons.credit_card),
            ),
            const Divider(),
            const ListTile(
              title: Text("Promo Code"),
              trailing: Text("Pick discount"),
            ),
            const Divider(),
            const ListTile(
              title: Text("Total Cost"),
              trailing: Text("\$15.97"),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/success');
              },
              child: const Text("Place Order"),
            ),
          ],
        ),
      ),
    );
  }
}
