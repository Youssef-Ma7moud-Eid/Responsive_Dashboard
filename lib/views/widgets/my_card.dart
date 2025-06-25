import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/card_page_view.dart';
import 'package:responsive_dash_board/views/widgets/dot_indicator.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  late PageController pageController;
  int currentindex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentindex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          alignment: Alignment.center,
          fit: BoxFit.scaleDown,
          child: Text(
            'My card',
            style: AppStyles.styleSemiBold20(context),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        CardPageView(
          pageController: pageController,
        ),
        SizedBox(
          height: 19,
        ),
        DotsIndicator(
          currentindex: currentindex,
        ),
      ],
    );
  }
}
