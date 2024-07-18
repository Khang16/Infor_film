import 'package:flutflix_tutorial/data/index.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

part 'movie_service.g.dart';

@RestApi(baseUrl: 'https://api.themoviedb.org/3')
abstract class MovieService {
  factory MovieService(Dio dio, {String baseUrl}) = _MovieService;

  @GET('/trending/all/day')
  Future<HttpResponse<BaseResponse<Movie>>> trendingMovies(
    @Query('api_key') String apiKey, {
    @Query('page') int? page,
  });

  @GET('/movie/top_rated')
  Future<HttpResponse<BaseResponse<Movie>>> topRatedMovies(
    @Query('api_key') String apiKey, {
    @Query('page') int? page,
  });

  @GET('/movie/upcoming')
  Future<HttpResponse<BaseResponse<Movie>>> upcomingMovies(
    @Query('api_key') String apiKey, {
    @Query('page') int? page,
  });

  static MovieService create() {
    final dio = Dio();
    return MovieService(dio);
  }
}
