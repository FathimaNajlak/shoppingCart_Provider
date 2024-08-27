import 'package:flutter/material.dart';
import 'package:provider_demo/constants.dart';

import 'package:provider_demo/screens/cart_screen.dart';
import 'package:provider_demo/screens/items_list.dart';
import 'package:provider_demo/widgets.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          'Catalog',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartScreen()),
              );
            },
            child: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: Catalog.length,
        itemBuilder: (context, index) => itemWidget(
          item: Catalog[index],
        ),
      ),
    );
  }
}
