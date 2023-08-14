import 'package:flutter/material.dart';
import 'package:shopping_list/models/grocery_item.dart';

class GroceryListItem extends StatelessWidget {
  const GroceryListItem({
    super.key,
    required this.groceryItems,
  });

  final GroceryItem groceryItems;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                color: groceryItems.category.color,
                width: 20,
                height: 20,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(groceryItems.name),
            ],
          ),
          Text(groceryItems.quantity.toString()),
        ],
      ),
    );
  }
}
