import 'package:flutter/material.dart';
import 'package:payflow/shared/widgets/divider/divider.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class SetLabelsButton extends StatelessWidget {
  final VoidCallback primaryOnPressed;
  final String primaryLabel;
  final VoidCallback secondaryOnPressed;
  final String secondaryLabel;

  const SetLabelsButton(
      {Key? key,
      required this.primaryOnPressed,
      required this.primaryLabel,
      required this.secondaryOnPressed,
      required this.secondaryLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        LabelButton(label: primaryLabel, onPressed: primaryOnPressed),
        CustomDivider(),
        LabelButton(label: secondaryLabel, onPressed: secondaryOnPressed),
      ],
    );
  }
}
