import 'package:flutter/material.dart';
import 'buttom.dart';

class ButtomRow extends StatelessWidget {

  final List<Buttom> buttoms;

  ButtomRow(this.buttoms);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttoms.fold(<Widget>[], (list, bt) {
          list.isEmpty ? list.add(bt) : list.addAll([SizedBox(width: 1), bt]);
          return list;
        }),
      ),
    );
  }
}