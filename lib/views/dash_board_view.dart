import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/dash_board_body.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      drawer: MediaQuery.sizeOf(context).width < 800 ? CustomDrawer() : null,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  key.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu),
              ),
              backgroundColor: Color(0XFFFAFAFA),
            )
          : null,
      backgroundColor: Color(0XFFF7F9FA),
      body: DashBoardBody(),
    );
  }
}
