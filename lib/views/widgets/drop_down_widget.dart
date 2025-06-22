import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Color(0XFFF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        spacing: 9,
        children: [
          Text(
            'Montly',
            style: AppStyles.styleMedium16(context),
          ),
          Transform.rotate(
            angle:-1.570796 ,
            child: Icon(Icons.arrow_back_ios_new_outlined,
            color: Color(0XFF064061),
            size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
