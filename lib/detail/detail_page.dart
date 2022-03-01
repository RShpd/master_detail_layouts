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
        ? Scaffold(
            body: _BodyWidget(
              detail: item.detail,
              title: item.title,
            ),
          )
        : Scaffold(
            appBar: AppBarWidget(title: item.title),
            body: _BodyWidget(detail: item.detail),
          );
  }
}

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({Key? key, this.detail = '', this.title = ''})
      : super(key: key);
  final String detail;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (title.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                title,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          Text(
            detail,
            textAlign: TextAlign.justify,
            textScaleFactor: 1.4,
          ),
        ],
      ),
    );
  }
}
