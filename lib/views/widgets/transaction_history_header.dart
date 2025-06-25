import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Transaction History',
            style: AppStyles.styleSemiBold20(context),
          ),
        ),
        Expanded(child: SizedBox()),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'see all',
            style: AppStyles.styleMedium16(context)
                .copyWith(color: Color(0XFF4EB7F2)),
          ),
        ),
      ],
    );
  }
}
