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
      child: Container(
        decoration: BoxDecoration(
          color: kDarkForeground,
          borderRadius: BorderRadius.all(Radius.circular(kBorderRadius / 2)),
        ),
        width: 150,
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
              child: Text(
                kKitNameMap[this.kit],
                //TODO: Change to a better font
                style: kLabelTextStyle.copyWith(
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
