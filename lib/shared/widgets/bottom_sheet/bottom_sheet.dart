import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/widgets/set_labels_button/set_labels_buttons.dart';

class BottomSheet extends StatelessWidget {
  final VoidCallback primaryOnPressed;
  final String primaryLabel;
  final VoidCallback secondaryOnPressed;
  final String secondaryLabel;
  const BottomSheet(
      {Key? key,
      required this.primaryOnPressed,
      required this.primaryLabel,
      required this.secondaryOnPressed,
      required this.secondaryLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.shape,
      child: Column(
        children: [
          SetLabelsButton(
              primaryOnPressed: primaryOnPressed,
              primaryLabel: primaryLabel,
              secondaryOnPressed: secondaryOnPressed,
              secondaryLabel: secondaryLabel)
        ],
      ),
    );
  }
}
