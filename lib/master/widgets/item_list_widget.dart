import 'package:flutter/material.dart';
import 'package:master_detail_layouts/models/models.dart';

class ItemListWidget extends StatelessWidget {
  const ItemListWidget({Key? key, required this.items, this.onItemTap})
      : super(key: key);

  final List<Item> items;
  final Function(Item)? onItemTap;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return ListTile(
          title: Text(item.title),
          onTap: () => onItemTap?.call(item),
        );
      },
    );
  }
}
