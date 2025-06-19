import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
    required this.list,
  });

  final List<DrawerItemModel> list;

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int choseindex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: widget.list.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            index != choseindex
                ? setState(() {
                    choseindex = index;
                  })
                : null;
          },
          child: DrawerItem(
            itemModel: widget.list[index],
            isActive: index == choseindex,
          ),
        );
      },
    );
  }
}
