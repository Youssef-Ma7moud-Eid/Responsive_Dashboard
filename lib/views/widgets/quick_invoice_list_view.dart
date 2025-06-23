import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/drawer_info.dart';

class QuickInvoiceListView extends StatelessWidget {
  const QuickInvoiceListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context, index) {
        return IntrinsicWidth(
            child: DrawerInfo(
              model: UserInfoModel(
                image: AppImages.imagesAvatar1,
                title: 'Madrani Andi',
                subtitle: 'Madraniadi20@gmail.com',
              ),
            ));
      },
    );
  }
}
