import 'package:flutter/material.dart';
import 'package:drum_machine/constants.dart';

//Widget which reprsents the basic beige box for buttons, utilized compositionally
class MachineButton extends StatelessWidget {
  final Widget child;

  MachineButton({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: kButtonMargin,
        ),
        Container(
          width: kButtonWidth,
          decoration: BoxDecoration(
              color: kButtonColor,
              borderRadius: BorderRadius.circular(kBorderRadius)),
          child: child,
        ),
        SizedBox(
          width: kButtonMargin,
        ),
      ],
    );
    ;
  }
}
