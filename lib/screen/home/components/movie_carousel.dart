import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../model/movie.dart';
import 'movie_card.dart';

class MovieCarousel extends StatefulWidget {
  const MovieCarousel({super.key});

  @override
  State<MovieCarousel> createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  late PageController _pageController;
  int initialpage = 1;

  @override
  void initState() {
    _pageController =
        PageController(viewportFraction: 0.8, initialPage: initialpage);
  }

  @override
  void dispose() {
    // TODO: implement dispose

    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
        child: AspectRatio(
          aspectRatio: 0.85,
          child: PageView.builder(
              controller: _pageController,
              itemCount: movies.length,
              itemBuilder: (context, index) => MovieCard(movie: movies[index])),
        ));
  }
}
