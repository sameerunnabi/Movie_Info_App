import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/model/movie.dart';
import 'backdrop_rating.dart';


class TitledurationAndFavButton extends StatelessWidget {
  const TitledurationAndFavButton({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movie.title,
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                height: kDefaultPadding / 2,
              ),
              Row(
                children: [
                  Text(
                    "${movie.year}",
                    style: TextStyle(color: kTextLightColor),
                  ),
                  SizedBox(
                    width: kDefaultPadding,
                  ),
                  Text(
                    "PG-13",
                    style: TextStyle(color: kTextLightColor),
                  ),
                  SizedBox(
                    width: kDefaultPadding,
                  ),
                  Text(
                    "2h 15min",
                    style: TextStyle(color: kTextLightColor),
                  ),
                ],
              )
            ],
          )),
          SizedBox(
              height: 64,
              width: 64,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 2,
                  width: 2,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.circular(15)),
                ),
              )),
        ],
      ),
    );
  }
}
