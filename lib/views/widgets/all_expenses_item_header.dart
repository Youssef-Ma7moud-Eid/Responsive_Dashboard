import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/expenses_item_model.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.model,
    required this.imagebackground,
    required this.imagecolor,
  });

  final ExpensesItemModel model;
  final Color? imagebackground, imagecolor;
  @override
  Widget build(BuildContext context) { 
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: imagebackground ?? Color(0XFFFAFAFA),
          radius: 25,
          child: SvgPicture.asset(
            model.image,
            colorFilter: ColorFilter.mode(
                imagecolor ?? Color(0XFF4EB7F2), BlendMode.srcIn),
          ),
        ),
        Spacer(),
        Transform.rotate(
          angle: -9.42,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imagebackground == null ? Color(0XFF064061) : Colors.white,
            size: 18,
          ),
        ),
      ],
    );
  }
}
