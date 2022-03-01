import 'package:flutter/material.dart';
import 'package:master_detail_layouts/common/widgets/app_bar_widget.dart';
import 'package:master_detail_layouts/models/models.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.item}) : super(key: key);
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: item.title),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Text(
          item.detail,
          textAlign: TextAlign.justify,
          textScaleFactor: 1.4,
        ),
      ),
    );
  }
}
