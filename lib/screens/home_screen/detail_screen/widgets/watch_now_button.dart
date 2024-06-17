import 'package:animated_movies_app/constants/images_path.dart';
import 'package:animated_movies_app/screens/added_to_cart/added_to_favourite.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Watch now button in detail screen
class WatchNowButton extends StatelessWidget {
  const WatchNowButton({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: GestureDetector(
          onTap: (){
            Get.off(AddedToCartPage());
          },
          child: Stack(
            fit: StackFit.expand, // Ensure the Stack expands to fill the Container
            children: [
              // Background image (assuming it's Image.asset based on your code)
              Image.asset(
                ImagePath.glowingButton,
                fit: BoxFit.contain,
              ),

              // Positioned widget to center the text on top of the image
              const Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Add to favourite",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
