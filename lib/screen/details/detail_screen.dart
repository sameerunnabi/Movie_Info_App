import 'package:flutter/material.dart';
import 'package:movie_app/screen/details/components/body.dart';
// import 'package:movie_app/screen/home/components/body.dart';

import '../../../model/movie.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        movie: movie,
      ),
    );
  }
}
