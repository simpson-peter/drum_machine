import 'package:drum_machine/data/app_data.dart';
import 'package:flutter/material.dart';
import 'package:drum_machine/constants.dart';
import 'package:provider/provider.dart';

import 'kit_selector_button.dart';

class KitSelector extends StatelessWidget {
  Kit kit;
  @override
  Widget build(BuildContext context) {
    kit = Provider.of<AppData>(context, listen: true).kit;
    return Column(
      children: [
        KitSelectorButton(
          kit: Kit.OldSchool,
          isSelected:
              Provider.of<AppData>(context, listen: true).kit == Kit.OldSchool,
        ),
        KitSelectorButton(
          kit: Kit.Trap,
          isSelected:
              Provider.of<AppData>(context, listen: true).kit == Kit.Trap,
        ),
      ],
    );
  }
}
