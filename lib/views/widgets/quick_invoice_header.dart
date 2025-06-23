import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20(context),
        ),
        Expanded(child: SizedBox()),
        CircleAvatar(
          backgroundColor: Color(0XFFFAFAFA),
          radius: 25,
          child: Icon(
            Icons.add,
            color: Color(0XFF4EB7F2),
          ),
        ),
      ],
    );
  }
}
