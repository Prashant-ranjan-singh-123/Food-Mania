import 'package:animated_movies_app/constants/ui_constant.dart';
import 'package:animated_movies_app/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class AddedToCartPage extends StatelessWidget {
  const AddedToCartPage({super.key});

  void main_screen() {
    Future.delayed(2500.ms, () {
      Get.off(const GlobalNavBar(),
          transition: Transition.fade,
          curve: Curves.decelerate,
          duration: 10.ms);
    });
  }

  @override
  Widget build(BuildContext context) {
    main_screen();
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: UiConstants.backgroundGradient,
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 250,
                    height: 250,
                    child: Lottie.asset('assets/lottie/tick_animation.json',
                        reverse: true)),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Added to Favourite',
                  style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Item is added to Favourite.',
                    style:
                        TextStyle(fontFamily: 'OpenSans', color: Colors.white))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
