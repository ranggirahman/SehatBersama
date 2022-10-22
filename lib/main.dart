import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import './login/login.dart';
import 'forgotpassword/step1.dart';
import 'forgotpassword/step2.dart';
import 'forgotpassword/step3.dart';
import 'forgotpassword/step4.dart';
import 'register/step1.dart';
import 'register/step2.dart';
import 'register/step3.dart';
import 'register/step4.dart';
import 'home/home.dart';

void main() {
  FlutterNativeSplash.removeAfter(initialization);
  runApp(const MyApp());
}

Future initialization(BuildContext? context) async {
  // load resource
  await Future.delayed(Duration(seconds: 1));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sehat Bersama",
      // home: LoginPageWidget(),

      // forgot password
      // home: ForgotSatuWidget(),
      // home: ForgotDuaWidget(),
      // home: ForgotTigaWidget(),
      // home: ForgotEmpatWidget(),

      // Register
      // home: RegisSatuWidget(),
      // home: RegisDuaWidget(),
      // home: RegisTigaWidget(),
      // home: RegisEmpatWidget(),

      // Home
      home: HomePageWidget(),
    );
  }
}
