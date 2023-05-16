import 'dart:convert';

import 'package:client/models/movie_model.dart';
import 'package:http/http.dart' as http;

class MovieRepository {
  Future<List<MovieModel>> fetchAllMovie() async {
    final response =
        await http.get(Uri.parse("http://localhost:8080/api/v1/movies"));
    List decoded = json.decode(response.body);
    List<MovieModel> mapped =
        decoded.map((e) => MovieModel.fromJson(e)).toList();
    return mapped;
  }
}
