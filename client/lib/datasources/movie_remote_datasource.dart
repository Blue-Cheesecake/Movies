import 'package:client/models/movie_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'movie_remote_datasource.g.dart';

@RestApi(baseUrl: "http://localhost:8080/api/v1/")
abstract class MovieRemoteDataSource {
  factory MovieRemoteDataSource(Dio dio) = _MovieRemoteDataSource;

  @GET("/movies")
  Future<List<MovieModel>> getMovies();
}
