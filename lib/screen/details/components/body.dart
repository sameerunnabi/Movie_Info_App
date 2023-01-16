import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/model/movie.dart';
import 'package:movie_app/screen/details/components/title_duration_and_favbtn.dart';

import '../../home/components/genrecard.dart';
import '../../home/components/genres.dart';
import 'backdrop_rating.dart';
import 'cast_and_crew.dart';
import 'cast_card.dart';

class Body extends StatelessWidget {
  final Movie movie;
  const Body({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    // gives the size of whole screen
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BackdropAndRating(size: size, movie: movie),
        SizedBox(
          height: kDefaultPadding / 2,
        ),
        TitledurationAndFavButton(movie: movie),
        Genres(),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2,
            horizontal: kDefaultPadding,
          ),
          child: Text(
            "Plot Summary",
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            movie.plot,
            style: TextStyle(color: Color(0xff737599)),
          ),
        ),
        CastAndCrew(casts: movie.cast),
      ],
    );
  }
}
