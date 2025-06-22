import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DrawerInfo extends StatelessWidget {
  const DrawerInfo(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});
  final String image, title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0XFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: FittedBox(
          alignment: Alignment.centerLeft,
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            style: AppStyles.styleSemiBold16(context),
          ),
        ),
        subtitle: FittedBox(
            alignment: Alignment.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text(
              subtitle,
              style: AppStyles.styleRegular12(context),
            )),
      ),
    );
  }
}
