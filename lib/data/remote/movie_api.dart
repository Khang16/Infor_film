import 'package:flutflix_tutorial/core/constants.dart';
import 'package:flutflix_tutorial/data/index.dart';

class MovieApi extends BaseRemoteSource {
  MovieApi({required this.service});

  final MovieService service;

  Future<List<Movie>> getTrendingMovies({int? page}) {
    return callApiWithErrorParser(
            service.trendingMovies(Constants.apiKey, page: page))
        .then((response) {
      return response.data.results;
    });
  }

  Future<List<Movie>> getTopRatedMovies({int? page}) {
    return callApiWithErrorParser(
            service.topRatedMovies(Constants.apiKey, page: page))
        .then((response) {
      return response.data.results;
    });
  }

  Future<List<Movie>> getUpcomingMovies({int? page}) {
    return callApiWithErrorParser(
            service.upcomingMovies(Constants.apiKey, page: page))
        .then((response) {
      return response.data.results;
    });
  }
}
