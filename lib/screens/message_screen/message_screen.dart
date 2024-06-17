import 'package:animated_movies_app/constants/ui_constant.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: UiConstants.backgroundGradient,
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 250,
                    height: 250,
                    child: Image.asset('assets/icons/no_message.png').animate()
                        .fadeIn(duration: 2000.ms)
                        .slideY(duration: 1000.ms, curve: Curves.decelerate),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  AutoSizeText(
                    maxLines: 1,
                    '"Your Have No Messages."',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: 22.50,
                      fontWeight: FontWeight.w600,
                      height: 0.13,
                    ),
                  ).animate().fadeIn(duration: 1000.ms, delay: 500.ms),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Let\'s Start a chat now.',
                    style: GoogleFonts.nunito(
                      color: Colors.white60,
                      fontSize: 12.50,
                      fontWeight: FontWeight.w400,
                      height: 0.13,
                    ),
                  ).animate()
                      .fadeIn(duration: 1500.ms, delay: 500.ms).scaleY(
                      duration: 1000.ms, curve: Curves.decelerate
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
