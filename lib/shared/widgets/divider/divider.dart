import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 56,
        width: 1,
        decoration: BoxDecoration(
          color: AppColors.primary,
        ));
  }
}
