import 'package:flutter/material.dart';
import 'package:master_detail_layouts/mock_data/item_list.dart';
import 'package:master_detail_layouts/models/models.dart';

class MasterPage extends StatefulWidget {
  const MasterPage({Key? key}) : super(key: key);

  @override
  _MasterPageState createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: kItemList.length,
      itemBuilder: (context, index) {
        final item = kItemList[index];
        return ListTile(
          title: Text(item.name),
          onTap: () => _onItemTap(context, item),
        );
      },
    );
  }

  void _onItemTap(BuildContext context, Item item) {
    //TODO: implement on select Item
    throw UnimplementedError();
  }
}
