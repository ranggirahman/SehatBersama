import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:heroicons/heroicons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';
import 'package:slider_captcha/slider_capchar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

// Style
import '../config/theme.dart';
// Login
part './login/login.dart';

// Forgotpassword
part 'forgotpassword/step1.dart';
part 'forgotpassword/step2.dart';
part 'forgotpassword/step3.dart';
part 'forgotpassword/step3b.dart';
part 'forgotpassword/step4.dart';

// // Register
part 'register/step1.dart';
part 'register/step2.dart';
part 'register/step3.dart';
part 'register/step4.dart';

// // Home
part 'home/home.dart';
part 'home/widget/buildHome.dart';
part 'peserta/peserta.dart';

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
    return GetMaterialApp(
      defaultTransition: Transition.noTransition,
      opaqueRoute: Get.isOpaqueRouteDefault,
      popGesture: Get.isPopGestureEnable,
      debugShowCheckedModeBanner: false,
      title: "Sehat Bersama",
      home: LoginPage(),
    );
  }
}
