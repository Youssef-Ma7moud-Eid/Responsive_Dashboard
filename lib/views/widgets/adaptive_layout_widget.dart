import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobilelayout,
      required this.tabletlayout,
      required this.desktoplayout});
  final WidgetBuilder mobilelayout, tabletlayout, desktoplayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1300 ) {
          return desktoplayout(context);
        } else if (constraints.maxWidth >= 800) {
          return tabletlayout(context);
        } else {
          return mobilelayout(context);
        }
      },
    );
  }
}
