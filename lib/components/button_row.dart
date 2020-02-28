import 'package:calculator_flutter/components/button.dart';
import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  final List<Button> buttons;

  const ButtonRow(this.buttons);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold(<Widget>[], (list, button) {
          list.isEmpty
              ? list.add(button)
              : list.addAll([SizedBox(width: 1), button]);
          return list;
        }).toList(),
      ),
    );
  }
}
