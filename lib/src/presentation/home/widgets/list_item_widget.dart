import 'package:fanap_challange_flutter/src/presentation/detail/detail_page.dart';
import 'package:fanap_challange_flutter/src/presentation/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

/// Widget for each item of the list view
class ListItemWidget extends StatelessWidget {
  final int index;
  final bool isMobileSize;
  const ListItemWidget({
    Key? key,
    required this.index,
    this.isMobileSize = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// [_isSelected] Determine that if we are in mobile screen size then 
    /// we don't select the list tile, otherwise we select based on tile selection
    final bool _isSelected = !isMobileSize
        ? context.watch<HomeProvider>().selectedItemIndex == index
        : !isMobileSize;

    return ListTile(
      title: Text(
        'Item $index',
        style: TextStyle(fontSize: 18.sp),
        overflow: TextOverflow.ellipsis,
      ),
      trailing: const Icon(Icons.arrow_forward_ios_outlined),
      selected: _isSelected,
      selectedColor: Colors.pink,
      selectedTileColor: Colors.pink.shade200,
      onTap: () => _onTapListItem(context),
    );
  }

  void _onTapListItem(BuildContext context) {
    /// Change selected item index in home provider
    context.read<HomeProvider>().selectedItemIndex = index;
    /// if we are in mobile screen size then we need to route
    if (isMobileSize) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const DetailPage()),
      );
    }
  }
}
