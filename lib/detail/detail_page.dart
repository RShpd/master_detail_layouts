import 'package:flutter/material.dart';
import 'package:master_detail_layouts/common/widgets/app_bar_widget.dart';
import 'package:master_detail_layouts/models/models.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    Key? key,
    required this.item,
    this.isInTabletLayout = false,
  }) : super(key: key);
  final Item item;
  final bool isInTabletLayout;

  @override
  Widget build(BuildContext context) {
    return (isInTabletLayout)
        ? Scaffold(body: _BodyWidget(detail: item.detail))
        : Scaffold(
            appBar: AppBarWidget(title: item.title),
            body: _BodyWidget(detail: item.detail),
          );
  }
}

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({Key? key, this.detail = ''}) : super(key: key);
  final String detail;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Text(
        detail,
        textAlign: TextAlign.justify,
        textScaleFactor: 1.4,
      ),
    );
  }
}
