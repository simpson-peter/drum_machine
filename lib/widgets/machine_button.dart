import 'package:flutter/material.dart';
import 'package:drum_machine/constants.dart';

//Widget which reprsents the basic beige box for buttons, utilized compositionally
class MachineButton extends StatelessWidget {
  final Widget child;
  final double borderRadius;

  MachineButton({
    @required this.child,
    this.borderRadius = kBorderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: kButtonHeight,
        decoration: BoxDecoration(
            color: kButtonColor,
            borderRadius: BorderRadius.circular(this.borderRadius)),
        child: child,
      ),
    );
  }
}
