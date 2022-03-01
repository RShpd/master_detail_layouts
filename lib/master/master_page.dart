import 'package:flutter/material.dart';
import 'package:master_detail_layouts/detail/detail_page.dart';
import 'package:master_detail_layouts/master/widgets/master_widgets.dart';
import 'package:master_detail_layouts/mock_data/item_list.dart';
import 'package:master_detail_layouts/mock_data/mock_data.dart';
import 'package:master_detail_layouts/models/models.dart';

class MasterPage extends StatefulWidget {
  const MasterPage({Key? key, this.onItemTap}) : super(key: key);

  final Function(Item)? onItemTap;

  @override
  _MasterPageState createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ItemListWidget(
        items: kItemList,
        onItemTap: widget.onItemTap ?? _onItemTap,
      ),
    );
  }

  void _onItemTap(Item item) {
    /// This method will be called when the screen size is classifies as a smartphone
    final route = MaterialPageRoute(
      builder: (context) => DetailPage(
        item: item,
      ),
    );
    Navigator.push(context, route);
  }
}
