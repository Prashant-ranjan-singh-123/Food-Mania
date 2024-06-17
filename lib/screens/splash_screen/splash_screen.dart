import 'package:animated_movies_app/constants/images_path.dart';
import 'package:animated_movies_app/screens/onboarding_screen/onboarding_screen.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

import '../../constants/ui_constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToOnboardingScreen();
  }

  // Navigating to Onboarding screen automatically after 2 seconds
  _navigateToOnboardingScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(OnboardingScreen(), transition: Transition.fade, duration: 1000.ms, curve: Curves.decelerate);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        body: Container(
      height: size.height,
      width: size.width,
      decoration: UiConstants.backgroundGradient,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Opacity(
              opacity: 1,
              child: SizedBox(
                  width: 200, height: 200,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(ImagePath.app_icon, color: Color.fromRGBO(245, 241, 220, 1),)))
                  .animate()
                  .fadeIn(duration: 2000.ms)
                  .slideY(duration: 1000.ms, curve: Curves.decelerate),
            ),
          ),
          const SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AutoSizeText('Food Mania',
              maxLines: 1,
              style: GoogleFonts.dancingScript(
                  fontWeight: FontWeight.w200,
                  fontSize: 40,
                  color: Color.fromRGBO(245, 241, 220, 1)),
            ).animate()
                .fadeIn(duration: 1500.ms, delay: 500.ms).scaleY(
                duration: 1000.ms, curve: Curves.decelerate
            ),
          ),
        ],
      ),
    ));
  }
}
