import 'package:animated_movies_app/constants/ui_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'widgets/movie_cover_and_play_button_widget.dart';
import 'widgets/movie_info_and_rating.dart';
import 'widgets/plot_widget.dart';
import 'widgets/watch_now_button.dart';

class DetailScreen extends StatelessWidget {
  final String movieName;
  final String movieTypeAndEpisode;
  final String plot;
  final String movieImage;
  final int rating;
  final int index;
  const DetailScreen(
      {super.key,
      required this.movieName,
      required this.movieTypeAndEpisode,
      required this.plot,
      required this.movieImage,
      required this.index,
      required this.rating});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: UiConstants.backgroundGradient,
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Movie cover image and play button widget
              MovieCoverAndPlayButton(
                size: size,
                movieImage: movieImage,
                context: context,
                index: index
              ),
              // Movie type and episode info
              MovieInfoAndRating(
                movieName: movieName,
                movieTypeAndEpisode: movieTypeAndEpisode,
                movieRating: rating,
              ),

              // Movie plot widget
              PlotWidget(
                moviePlot: plot,
              ),
              // Movies cast
              // const MoviesCast(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: WatchNowButton(size: size),
    );
  }
}
