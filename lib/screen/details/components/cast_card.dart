import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/model/movie.dart';
import 'package:movie_app/screen/details/components/title_duration_and_favbtn.dart';

import '../../home/components/genrecard.dart';
import '../../home/components/genres.dart';
import 'backdrop_rating.dart';

class CastCard extends StatelessWidget {
  final Map cast;
  const CastCard({super.key, required this.cast});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: kDefaultPadding),
      width: 80,
      child: Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage(cast['image']))),
          ),
          SizedBox(
            height: kDefaultPadding / 4,
          ),
          Text(
            cast['orginalName'],
            style: Theme.of(context).textTheme.bodyText2,
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
          // SizedBox(
          //   height: kDefaultPadding / 4,
          // ),
          // Text(
          //   cast['movieName'],
          //   style: TextStyle(color: kTextLightColor),
          //   textAlign: TextAlign.center,
          //   maxLines: 1,
          // ),
        ],
      ),
    );
  }
}
