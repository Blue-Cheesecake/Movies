import 'dart:convert';

import 'package:client/models/id_model.dart';

class MovieModel {
  IdModel idModel;
  String imdbIdModel;
  String title;
  DateTime releaseDate;
  String trailerLink;
  String poster;
  List<String> genres;
  List<String> backdrops;
  List<dynamic> reviewsIdModel;

  MovieModel({
    required this.idModel,
    required this.imdbIdModel,
    required this.title,
    required this.releaseDate,
    required this.trailerLink,
    required this.poster,
    required this.genres,
    required this.backdrops,
    required this.reviewsIdModel,
  });

  factory MovieModel.fromRawJson(String str) =>
      MovieModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        idModel: IdModel.fromJson(json["IdModel"]),
        imdbIdModel: json["imdbIdModel"],
        title: json["title"],
        releaseDate: DateTime.parse(json["releaseDate"]),
        trailerLink: json["trailerLink"],
        poster: json["poster"],
        genres: List<String>.from(json["genres"].map((x) => x)),
        backdrops: List<String>.from(json["backdrops"].map((x) => x)),
        reviewsIdModel:
            List<dynamic>.from(json["reviewsIdModel"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "IdModel": idModel.toJson(),
        "imdbIdModel": imdbIdModel,
        "title": title,
        "releaseDate":
            "${releaseDate.year.toString().padLeft(4, '0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}",
        "trailerLink": trailerLink,
        "poster": poster,
        "genres": List<dynamic>.from(genres.map((x) => x)),
        "backdrops": List<dynamic>.from(backdrops.map((x) => x)),
        "reviewsIdModel": List<dynamic>.from(reviewsIdModel.map((x) => x)),
      };
}
