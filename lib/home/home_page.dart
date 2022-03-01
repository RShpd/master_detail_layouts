import 'package:flutter/material.dart';
import 'package:master_detail_layouts/assets/assets.dart';
import 'package:master_detail_layouts/detail/detail_page.dart';
import 'package:master_detail_layouts/master/master_page.dart';
import 'package:master_detail_layouts/mock_data/item_list.dart';
import 'package:master_detail_layouts/models/models.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Item _selectedItem = kItemList.first;

  @override
  Widget build(BuildContext context) {
    final shortestSide = MediaQuery.of(context).size.shortestSide;
    final useMobileLayout = shortestSide < kMinScreenSize;

    return LayoutBuilder(
      builder: (context, constraints) {
        if (useMobileLayout) {
          return const _MobileHomePage();
        }

        /// other screen sizes like tablet and web browsers
        return _TabletHomePage(
          selectedItem: _selectedItem,
          onItemTap: (item) => setState(() => _selectedItem = item),
        );
      },
    );
  }
}

class _TabletHomePage extends StatelessWidget {
  const _TabletHomePage({Key? key, required this.selectedItem, this.onItemTap})
      : super(key: key);

  final Item selectedItem;
  final Function(Item)? onItemTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: MasterPage(
            onItemTap: onItemTap,
            selectedItem: selectedItem,
          ),
        ),
        Expanded(
          flex: 2,
          child: DetailPage(
            item: selectedItem,
            isInTabletLayout: true,
          ),
        )
      ],
    );
  }
}

class _MobileHomePage extends StatelessWidget {
  const _MobileHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MasterPage();
  }
}
