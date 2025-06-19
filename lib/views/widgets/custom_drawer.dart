import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/active_and_in_active_item.dart';
import 'package:responsive_dash_board/views/widgets/drawer_info.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static const List<DrawerItemModel> list = [
    DrawerItemModel(image: AppImages.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(
        image: AppImages.imagesMyTransctions, title: 'My Transaction'),
    DrawerItemModel(image: AppImages.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(
        image: AppImages.imagesWalletAccount, title: 'Wallet Account'),
    DrawerItemModel(
        image: AppImages.imagesMyInvestments, title: 'My Investments'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: DrawerInfo(
                image: AppImages.imagesAvatar3,
                title: 'Lekan Okeowo',
                subtitle: 'demo@gmail.com'),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemListView(list: list),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                InActiveItem(
                  itemModel: DrawerItemModel(
                      image: AppImages.imagesSettings,
                      title: 'Setting sysytem'),
                ),
                InActiveItem(
                  itemModel: DrawerItemModel(
                      image: AppImages.imagesLogout, title: 'Logout Account'),
                ),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
