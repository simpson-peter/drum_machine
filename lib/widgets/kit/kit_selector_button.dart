import 'package:flutter/material.dart';
import 'package:drum_machine/constants.dart';
import 'package:provider/provider.dart';
import 'package:drum_machine/data/app_data.dart';

class KitSelectorButton extends StatelessWidget {
  final Kit kit;
  final bool isSelected;

  KitSelectorButton({@required this.kit, @required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<AppData>(context, listen: false).setKit(this.kit);
      },
      child: Row(
        children: [
          SizedBox(
            width: kButtonMargin,
          ),
          Icon(
            Icons.circle,
            color: this.isSelected ? kRedLightColor : kRedLightOffColor,
            size: kSmallLEDSize,
          ),
          SizedBox(
            width: kButtonMargin,
          ),
          Container(
            color: kDarkForeground,
            child: Text(
              kKitNameMap[this.kit],
            ),
          ),
        ],
      ),
    );
  }
}
