import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:payflow/modules/splash/splash.dart';

import 'modules/home/home_page.dart';
import 'modules/login/login_page.dart';
import 'shared/themes/app_colors.dart';

class AppFirebase extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _AppFirebaseState createState() => _AppFirebaseState();
}

class _AppFirebaseState extends State<AppFirebase> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Material(
              child: Center(
                  child: Text("N'ao foi possivel inicializar o Firebase")),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return MaterialApp(
              title: 'PayFlow',
              theme: ThemeData(
                primaryColor: AppColors.primary,
              ),
              home: LoginPage(),
              routes: {
                "/home": (context) => HomePage(),
                "/login": (context) => LoginPage(),
                "/splash": (context) => Splash(),
              },
            );
          }
          return Material(
            child: Center(child: CircularProgressIndicator()),
          );
        });
  }
}
