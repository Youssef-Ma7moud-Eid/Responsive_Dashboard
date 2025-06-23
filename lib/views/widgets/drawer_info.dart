import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DrawerInfo extends StatelessWidget {
  const DrawerInfo(
      {super.key,
      required this.model});
  final UserInfoModel model;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0XFFFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(model.image),
          title: FittedBox(
            alignment: Alignment.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text(
              model.title,
              style: AppStyles.styleSemiBold16(context),
            ),
          ),
          subtitle: FittedBox(
              alignment: Alignment.centerLeft,
              fit: BoxFit.scaleDown,
              child: Text(
                model.subtitle,
                style: AppStyles.styleRegular12(context),
              )),
        ),
      ),
    );
  }
}
