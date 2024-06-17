import 'dart:ui';

import 'package:animated_movies_app/constants/images_path.dart';
import 'package:animated_movies_app/constants/ui_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../../data/movies_data.dart';

// Movie cover and play button widget used in details screen
class MovieCoverAndPlayButton extends StatelessWidget {
  final String movieImage;
  final BuildContext context;
  final int index;
  const MovieCoverAndPlayButton({
    super.key,
    required this.size,
    required this.movieImage,
    required this.index,
    required this.context
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Hero(
        tag: MoviesData.movies_inner[index].coverImage,
        child: Stack(
          children: [
            // Movie Image
            SizedBox(
              height: size.height * 0.5,
              width: size.width,
              child: UiConstants.image(
                path: movieImage,
                fit: BoxFit.cover,
              ),
            ),
            // Back button

            Positioned.fill(
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: size.height * 0.5,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        // Colors.transparent,
                        // Colors.transparent,
                        Color.fromRGBO(32, 11, 48, 1.0),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 30,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: Container(
                    color: Colors.black38,
                    child: GestureDetector(
                      onTap: (){
                        {
                          print('get back call');
                          Get.back();
                        }
                      },
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Center(
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                            size: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Gradient container to give effec
            // Play button lottie
            // Positioned.fill(
            //   child: Align(
            //     alignment: Alignment.bottomCenter,
            //     child: SizedBox(
            //       height: 100,
            //       width: 100,
            //       child: Lottie.asset(
            //         ImagePath.palyButtonLottie,
            //         fit: BoxFit.cover,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
