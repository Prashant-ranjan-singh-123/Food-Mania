import 'package:animated_movies_app/constants/images_path.dart';
import 'package:animated_movies_app/constants/route_animation.dart';
import 'package:animated_movies_app/constants/ui_constant.dart';
import 'package:animated_movies_app/screens/home_screen/home_screen.dart';
import 'package:animated_movies_app/screens/onboarding_screen/widgets/custom_marquee_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:marqueer/marqueer.dart';

import '../bottom_nav_bar/bottom_nav_bar.dart';
import '../signing_screen/signing_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: UiConstants.backgroundGradient,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.2,
              ),
              // List of movies in marquee style
              const CustomMarqueeWidget(
                direction: MarqueerDirection.rtl,
              ).animate()
                  .scale(
                  delay: 400.ms, duration: 500.ms, curve: Curves.decelerate)
                  .desaturate(
                  delay: 400.ms,
                  duration: 1000.ms,
                  curve: Curves.decelerate),
              // List of movies in marquee style

              const CustomMarqueeWidget(
                direction: MarqueerDirection.ltr,
              ).animate()
                  .scale(
                  delay: 600.ms, duration: 500.ms, curve: Curves.decelerate)
                  .fadeIn(
                  delay: 600.ms,
                  duration: 1000.ms,
                  curve: Curves.decelerate),
              // List of movies in marquee style

              const CustomMarqueeWidget(
                direction: MarqueerDirection.rtl,
              ).animate()
                  .scale(
                  delay: 800.ms, duration: 500.ms, curve: Curves.decelerate)
                  .fadeIn(
                  delay: 800.ms,
                  duration: 1000.ms,
                  curve: Curves.decelerate),

              const Padding(
                padding: EdgeInsets.only(top: 64),
                child: Text(
                  "Food Mania",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ).animate()
                  .scale(
                  delay: 1000.ms,
                  duration: 500.ms,
                  curve: Curves.decelerate)
                  .fadeIn(
                  delay: 1000.ms,
                  duration: 1000.ms,
                  curve: Curves.decelerate),


              const Padding(
                padding: EdgeInsets.only(top: 18),
                child: Text(
                  "Where Every food Finds chief",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ).animate()
                  .scale(
                  delay: 1200.ms,
                  duration: 500.ms,
                  curve: Curves.decelerate)
                  .fadeIn(
                  delay: 1200.ms,
                  duration: 1000.ms,
                  curve: Curves.decelerate),

              SizedBox(height: 40,),
              Transform.scale(
                scale: 0.7,
                child: GestureDetector(
                  onTap: (){
                    Get.off(LoginPage());
                  },
                  child: Stack(
                    children: [
                      // Background image or widget (assuming it's Image.asset based on your code)
                      Image.asset(
                        ImagePath.glowingButton,
                        fit: BoxFit.cover,
                      ),

                      // Positioned widget for the text to center it
                      const Positioned.fill(
                        child: Center(
                          child: Text(
                            "Enter now",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ).animate()
                  .scale(
                  delay: 1400.ms,
                  duration: 500.ms,
                  curve: Curves.decelerate)
                  .fadeIn(
                  delay: 1400.ms,
                  duration: 1000.ms,
                  curve: Curves.decelerate),
            ],
          ),
        ),
      ),
    );
  }
}
