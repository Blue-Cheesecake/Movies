import 'package:client/models/movie_model.dart';
import 'package:flutter/material.dart';

class MovieItemWidget extends StatelessWidget {
  const MovieItemWidget({Key? key, required this.movieModel}) : super(key: key);

  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
    );
  }
}
