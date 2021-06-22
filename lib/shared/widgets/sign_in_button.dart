import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class SignInButton extends StatelessWidget {
  final VoidCallback onTap;
  const SignInButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Row(
          children: [GoogleIconContainer(), Divider(), ButtonLabel()],
        ),
      ),
    );
  }
}

class GoogleIconContainer extends StatelessWidget {
  const GoogleIconContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 56,
      decoration: BoxDecoration(
          color: AppColors.shape,
          border: Border.all(color: AppColors.stroke, width: 1),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
          image: DecorationImage(image: AssetImage(AppImages.google))),
    );
  }
}

class Divider extends StatelessWidget {
  const Divider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 1,
        height: 56,
        decoration: BoxDecoration(color: Colors.transparent));
  }
}

class ButtonLabel extends StatelessWidget {
  const ButtonLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 239,
      height: 56,
      decoration: BoxDecoration(
          color: AppColors.shape,
          border: Border.all(color: AppColors.stroke, width: 1),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(5), bottomRight: Radius.circular(5))),
      child: Center(
          child: Text(
        "Entrar com o Google",
        style: TextStyles.buttonGray,
      )),
    );
  }
}

class ButtonWrapper extends StatelessWidget {
  const ButtonWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
