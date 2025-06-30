import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/dash_board_mobile_layout.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(child: DashBoardMobileLayout());
  }
}
