import 'package:calculator_flutter/components/button.dart';
import 'package:calculator_flutter/components/button_row.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) onPress;

  const Keyboard(this.onPress);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: <Widget>[
          ButtonRow(
            [
              Button.big(text: 'AC', color: Button.DARK, onPress: onPress),
              Button(text: '%', color: Button.DARK, onPress: onPress),
              Button.operation(text: '/', onPress: onPress),
            ],
          ),
          SizedBox(height: 1),
          ButtonRow(
            [
              Button(text: '7', onPress: onPress),
              Button(text: '8', onPress: onPress),
              Button(text: '9', onPress: onPress),
              Button.operation(text: 'x', onPress: onPress),
            ],
          ),
          SizedBox(height: 1),
          ButtonRow(
            [
              Button(text: '4', onPress: onPress),
              Button(text: '5', onPress: onPress),
              Button(text: '6', onPress: onPress),
              Button.operation(text: '-', onPress: onPress),
            ],
          ),
          SizedBox(height: 1),
          ButtonRow(
            [
              Button(text: '1', onPress: onPress),
              Button(text: '2', onPress: onPress),
              Button(text: '3', onPress: onPress),
              Button.operation(text: '+', onPress: onPress),
            ],
          ),
          SizedBox(height: 1),
          ButtonRow(
            [
              Button.big(text: '0', onPress: onPress),
              Button(text: '.', onPress: onPress),
              Button.operation(text: '=', onPress: onPress),
            ],
          ),
        ],
      ),
    );
  }
}
