import 'package:flutter/material.dart';
import 'package:master_detail_layouts/models/models.dart';

class ItemListWidget extends StatelessWidget {
  const ItemListWidget(
      {Key? key, required this.items, this.onItemTap, this.selectedItem})
      : super(key: key);

  final List<Item> items;
  final Function(Item)? onItemTap;
  final Item? selectedItem;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];

        /// Item list tile widget
        return ListTile(
          title: Text(
            item.title,
            style: Theme.of(context).textTheme.headline6,
          ),
          selected: item == selectedItem,
          onTap: () => onItemTap?.call(item),
          trailing: const Icon(Icons.arrow_forward_ios),
        );
      },
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}
