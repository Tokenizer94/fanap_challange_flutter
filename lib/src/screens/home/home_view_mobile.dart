import 'package:flutter/material.dart';

class HomeViewMobile extends StatelessWidget {
  const HomeViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 20,
      itemBuilder: (context, index) => _ListItemWidget(index: index),
      separatorBuilder: (context, index) => Divider(
        height: 1,
        thickness: 1,
        color: Colors.grey.shade300,
      ),
    );
  }
}

/// Widget for each item of the list view
class _ListItemWidget extends StatelessWidget {
  final int index;
  const _ListItemWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('List Item $index'),
      trailing: const Icon(Icons.arrow_forward_ios_outlined),
      onTap: _onTapListItem,
    );
  }

  void _onTapListItem() {}
}
