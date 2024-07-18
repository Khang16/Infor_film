import 'package:flutflix_tutorial/core/constants.dart';
import 'package:flutflix_tutorial/data/index.dart';
import 'package:flutflix_tutorial/data/models/_core/json_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

enum MovieListType {
  trending,
  topRated,
  upcoming;

  String get name {
    switch (this) {
      case MovieListType.trending:
        return 'Trending';
      case MovieListType.topRated:
        return 'Top Rated';
      case MovieListType.upcoming:
        return 'Upcoming';
    }
  }
}

@freezed
class Movie with _$Movie {
  factory Movie({
    @JsonKey(name: 'id', fromJson: $fromJsonToString) @Default('') String id,
    @JsonKey(name: 'title', fromJson: $fromJsonToString)
    @Default('')
    String title,
    @JsonKey(name: 'overview', fromJson: $fromJsonToString)
    @Default('')
    String overview,
    @JsonKey(name: 'poster_path', fromJson: $fromJsonToString)
    @Default('')
    String posterPath,
    @JsonKey(name: 'release_date', fromJson: $fromJsonToString)
    @Default('')
    String releaseDate,
    @JsonKey(name: 'vote_average', fromJson: $fromJsonToDouble)
    @Default(0.0)
    double voteAverage,
  }) = _Movie;
  const Movie._();

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  String get posterPathUrl => '${Constants.imagePath}$posterPath';
}
