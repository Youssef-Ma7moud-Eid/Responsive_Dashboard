import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/views/widgets/active_and_in_active_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.itemModel, required this.isActive});
  final DrawerItemModel itemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: isActive
          ? ActiveItem(itemModel: itemModel)
          : InActiveItem(
              itemModel: itemModel,
            ),
    );
  }
}

