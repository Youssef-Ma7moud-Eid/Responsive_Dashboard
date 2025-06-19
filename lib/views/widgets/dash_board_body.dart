import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/views/widgets/desktop_layout.dart';
import 'package:responsive_dash_board/views/widgets/mobile_layout.dart';
import 'package:responsive_dash_board/views/widgets/tablet_layout.dart';

class DashBoardBody extends StatelessWidget {
  const DashBoardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
        mobilelayout: (context) => MobileLayout(),
        tabletlayout: (context) => TabletLayout(),
        desktoplayout: (context) => DesktopLayout());
  }
}


