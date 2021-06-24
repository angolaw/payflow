import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/set_labels_button/set_labels_buttons.dart';

class BottomSheetWidget extends StatelessWidget {
  final VoidCallback primaryOnPressed;
  final String primaryLabel;
  final VoidCallback secondaryOnPressed;
  final String secondaryLabel;
  final String title;
  final String subtitle;
  const BottomSheetWidget(
      {Key? key,
      required this.primaryOnPressed,
      required this.primaryLabel,
      required this.secondaryOnPressed,
      required this.secondaryLabel,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: AppColors.shape,
        child: Column(
          children: [
            Expanded(
                child: Container(
              color: Colors.black.withOpacity(0.6),
            )),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(40),
                  child: Text.rich(
                    TextSpan(
                      text: title,
                      style: TextStyles.buttonBoldHeading,
                      children: [
                        TextSpan(
                            text: "\n $subtitle",
                            style: TextStyles.buttonHeading),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(height: 1, color: AppColors.stroke),
                SetLabelsButton(
                    primaryOnPressed: primaryOnPressed,
                    primaryLabel: primaryLabel,
                    secondaryOnPressed: secondaryOnPressed,
                    secondaryLabel: secondaryLabel)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
