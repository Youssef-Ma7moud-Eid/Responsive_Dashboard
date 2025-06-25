import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentindex});
  final int currentindex;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 6,
      children: List.generate(
        3,
        (index) => CustomDotIndicator(isActive: index == currentindex),
      ),
    );
  }
}
