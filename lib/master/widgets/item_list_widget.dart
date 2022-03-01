import 'package:flutter/material.dart';
import 'package:master_detail_layouts/models/models.dart';

class ItemListWidget extends StatelessWidget {
  const ItemListWidget({Key? key, required this.items, this.onItemTap})
      : super(key: key);

  final List<Item> items;
  final Function(Item)? onItemTap;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return ListTile(
          title: Text(
            item.title,
            style: Theme.of(context).textTheme.headline6,
          ),
          onTap: () => onItemTap?.call(item),
          trailing: const Icon(Icons.arrow_forward_ios),
        );
      },
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}
