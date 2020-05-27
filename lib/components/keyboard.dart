import 'package:flutter/material.dart';
import 'buttom.dart';
import 'buttom_row.dart';

class Keyboard extends StatelessWidget {

  final void Function(String) cb;

  Keyboard(this.cb);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: <Widget>[
         ButtomRow([
           Buttom.big(text: 'AC', color: Buttom.DARK, cb: cb),
           Buttom(text: '%', color: Buttom.DARK, cb: cb),
           Buttom.operation(text: '/', cb: cb),
         ]),
         SizedBox(height: 1),
         ButtomRow([
           Buttom(text: '7', cb: cb),
           Buttom(text: '8', cb: cb),
           Buttom(text: '9', cb: cb),
           Buttom.operation(text: 'X', cb: cb),
         ]),
         SizedBox(height: 1),
         ButtomRow([
           Buttom(text: '4', cb: cb),
           Buttom(text: '5', cb: cb),
           Buttom(text: '6', cb: cb),
           Buttom.operation(text: '-', cb: cb),
         ]),
         SizedBox(height: 1),
          ButtomRow([
           Buttom(text: '1', cb: cb),
           Buttom(text: '2', cb: cb),
           Buttom(text: '3', cb: cb),
           Buttom.operation(text: '+', cb: cb),
         ]),
         SizedBox(height: 1),
         ButtomRow([
           Buttom.big(text: '0', cb: cb),
           Buttom(text: '.', cb: cb),
           Buttom.operation(text: '=', cb: cb),
         ]),
        ],
      ),
    );
  }
}