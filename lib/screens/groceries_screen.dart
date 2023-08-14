import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/providers/grocery_item_provider.dart';
import 'package:shopping_list/widgets/grocery_list_item.dart';

class GroceriesScreen extends ConsumerWidget {
  const GroceriesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groceryItem = ref.watch(groceryItemProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
      ),
      body: ListView.builder(
        // padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        itemCount: groceryItem.length,
        // itemBuilder: (ctx, index) => GroceryListItem(
        //   groceryItems: groceryItem[index],
        // ),
        itemBuilder: (ctx, index) => ListTile(
          title: Text(groceryItem[index].name),
          leading: Container(
            width: 24,
            height: 24,
            color: groceryItem[index].category.color,
          ),
          trailing: Text(
            groceryItem[index].quantity.toString(),
          ),
        ),
      ),
    );
  }
}
