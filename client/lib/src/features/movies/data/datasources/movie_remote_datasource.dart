import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/models.dart';

part 'movie_remote_datasource.g.dart';

abstract class MovieDataSource {
  Future<List<MovieModel>> getMovies();
}

@RestApi(baseUrl: "http://localhost:8080/api/v1/")
abstract class MovieRetrofit {
  factory MovieRetrofit(Dio dio) = _MovieRetrofit;

  @GET("/movies")
  Future<List<MovieModel>> getMovies();
}

class MovieRetrofitDataSource implements MovieDataSource {
  @override
  Future<List<MovieModel>> getMovies() {
    final response = MovieRetrofit(Dio()).getMovies();
    return response;
  }
}
