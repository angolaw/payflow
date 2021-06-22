import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

import '../../shared/widgets/sign_in_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Container(
              height: size.height * 0.4,
              decoration: BoxDecoration(color: AppColors.primary),
            ),
            Positioned(
                top: 60,
                left: 0,
                right: 0,
                child: Image.asset(
                  AppImages.person,
                  height: 373,
                  width: 208,
                )),
            Positioned(
              left: 0,
              right: 0,
              bottom: size.height * 0.20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.logomini),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                    child: Text(
                      "Organize seus boletos em um só lugar",
                      style: TextStyles.titleHome,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: SignInButton(
                      onTap: () {
                        print("Called from home");
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
