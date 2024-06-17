import 'package:animated_movies_app/constants/route_animation.dart';
import 'package:animated_movies_app/constants/ui_constant.dart';
import 'package:animated_movies_app/data/movies_data.dart';
import 'package:animated_movies_app/screens/home_screen/widgets/animated_stack.dart';
import 'package:animated_movies_app/screens/home_screen/widgets/bottom_nav_bar.dart';
import 'package:animated_movies_app/screens/home_screen/widgets/filters_widget.dart';
import 'package:animated_movies_app/screens/home_screen/widgets/header_widget.dart';
import 'package:animated_movies_app/screens/home_screen/widgets/movies_cover_widget.dart';
import 'package:animated_movies_app/screens/home_screen/widgets/search_field_widget.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import 'detail_screen/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: size.height,
        width: size.width,
        decoration: UiConstants.backgroundGradient,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Header widget
              Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.09,
                  left: 24,
                  right: 24,
                ),
                child: HeaderWidget(size: size)
                    // .animate()
                    // .scale(
                    // delay: 400.ms, duration: 500.ms, curve: Curves.decelerate)
                    // .desaturate(
                    // delay: 400.ms,
                    // duration: 1000.ms,
                    // curve: Curves.decelerate),
              ),
              // Search Field widget
              Padding(
                padding: const EdgeInsets.only(
                  top: 28,
                ),
                child: SearchField(size: size),
              ).animate()
                  .scale(
                  delay: 100.ms, duration: 500.ms, curve: Curves.decelerate)
                  .fadeIn(
                  delay: 100.ms,
                  duration: 1000.ms,
                  curve: Curves.decelerate),
              // Filters widget
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: FiltersWidget(),
              ).animate()
                  .scale(
                  delay: 300.ms, duration: 500.ms, curve: Curves.decelerate)
                  .fadeIn(
                  delay: 300.ms,
                  duration: 1000.ms,
                  curve: Curves.decelerate),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 32, top: 14),
                  child: RichText(
                    text: const TextSpan(
                      text: "Featured ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: "Dishes",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ).animate()
                  .scale(
                  delay: 500.ms,
                  duration: 500.ms,
                  curve: Curves.decelerate)
                  .fadeIn(
                  delay: 500.ms,
                  duration: 1000.ms,
                  curve: Curves.decelerate),
              // Animated Stack
              Container(
                height: size.height * 0.35,
                padding: const EdgeInsets.all(38),
                child: AnimatedStackWidget(
                  itemCount: MoviesData.movies_inner.length,
                  itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Get.to(DetailScreen(
                          movieName: MoviesData.movies_inner[index].name,
                          movieTypeAndEpisode:
                          MoviesData.movies_inner[index].movieTypeAndEpisode,
                          plot: MoviesData.movies_inner[index].plot,
                          movieImage: MoviesData.movies_inner[index].coverImage,
                          rating: MoviesData.movies_inner[index].rating,
                          index: index
                        ),
                          transition: Transition.downToUp,
                          curve: Curves.decelerate,
                          duration: 400.ms
                        );
                      },
                      child:
                      Hero(tag: MoviesData.movies_inner[index].coverImage,
                      child: MagazineCoverImage(movies: MoviesData.movies_inner[index]))),
                ),
              ).animate()
                  .scale(
                  delay: 700.ms,
                  duration: 500.ms,
                  curve: Curves.decelerate)
                  .fadeIn(
                  delay: 700.ms,
                  duration: 1000.ms,
                  curve: Curves.decelerate),
            ],
          ),
        ),
      ),
    );
  }
}
