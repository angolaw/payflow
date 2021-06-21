import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: height * 0.4,
                decoration: BoxDecoration(color: AppColors.primary),
              ),
            ],
          ),
          Positioned(
              top: 37,
              left: 84,
              right: 84,
              child: Image.asset(AppImages.person)),
          Positioned(
              top: 425,
              left: 84,
              right: 84,
              child: Image.asset(AppImages.logomini)),
          Positioned(
            top: 550,
            right: 69,
            left: 69,
            child: Text(
              "Organize seus boletos em um só lugar",
              style: TextStyles.titleHome,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
