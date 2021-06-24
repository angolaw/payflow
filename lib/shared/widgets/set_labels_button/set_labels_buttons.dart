import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/divider/divider.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class SetLabelsButton extends StatelessWidget {
  final VoidCallback primaryOnPressed;
  final String primaryLabel;
  final VoidCallback secondaryOnPressed;
  final String secondaryLabel;
  final bool enablePrimaryColor;

  const SetLabelsButton(
      {Key? key,
      required this.primaryOnPressed,
      required this.primaryLabel,
      required this.secondaryOnPressed,
      required this.secondaryLabel,
      this.enablePrimaryColor = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        LabelButton(
          label: primaryLabel,
          onPressed: primaryOnPressed,
          style: enablePrimaryColor ? TextStyles.buttonPrimary : null,
        ),
        CustomDivider(),
        LabelButton(label: secondaryLabel, onPressed: secondaryOnPressed),
      ],
    );
  }
}
