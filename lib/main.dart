import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/cart_provider.dart';
import 'package:provider_demo/screens/catalog_screen.dart';

void main() {
  runApp(const ShoppingCart());
}

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: CatalogScreen()),
    );
  }
}
