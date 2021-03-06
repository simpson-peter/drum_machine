import 'package:flutter/material.dart';
import 'package:drum_machine/constants.dart';

//Widget which reprsents the basic beige box for buttons, utilized compositionally
class MachineButton extends StatelessWidget {
  final Widget child;
  final double borderRadius;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final Color color;

  MachineButton({
    @required this.child,
    this.borderRadius = kBorderRadius,
    this.margin = const EdgeInsets.all(0),
    this.padding = const EdgeInsets.all(0),
    this.color = kButtonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: this.padding,
        height: kButtonHeight,
        margin: this.margin,
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(this.borderRadius),
        ),
        child: child,
      ),
    );
  }
}
