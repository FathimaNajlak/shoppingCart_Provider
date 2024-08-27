import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/cart_provider.dart';
import 'package:provider_demo/constants.dart';
import 'package:provider_demo/item_model.dart';

class itemWidget extends StatelessWidget {
  const itemWidget({super.key, required this.item, this.isCartItem = false});
  final Item item;
  final bool isCartItem;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context, listen: false);
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(color: item.color),
      ),
      title: Text(item.name),
      subtitle: Text('${item.price}\$'),
      trailing: isCartItem
          ? null
          : ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
              onPressed: () => provider.addItem(item),
              child: const Text(
                'Add',
                style: TextStyle(color: Colors.white),
              )),
    );
  }
}
