import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/expenses_item_model.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item.dart';

class AllExpensesBody extends StatefulWidget {
  const AllExpensesBody({super.key, required this.list});
  final List<ExpensesItemModel> list;

  @override
  State<AllExpensesBody> createState() => _AllExpensesBodyState();
}

class _AllExpensesBodyState extends State<AllExpensesBody> {
  int indx = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: widget.list
          .map(
            (e) => Expanded(
              child: GestureDetector(
                  onTap: () {
                    indx != widget.list.indexOf(e)
                        ? setState(() {
                            indx = widget.list.indexOf(e);
                          })
                        : null ;
                  },
                  child: AllExpensesItem(
                      model: e, isActive: indx == widget.list.indexOf(e))),
            ),
          )
          .toList(),
    );
  }
}
