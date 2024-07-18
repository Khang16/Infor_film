// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieImpl _$$MovieImplFromJson(Map<String, dynamic> json) => _$MovieImpl(
      id: json['id'] == null ? '' : $fromJsonToString(json['id']),
      title: json['title'] == null ? '' : $fromJsonToString(json['title']),
      overview:
          json['overview'] == null ? '' : $fromJsonToString(json['overview']),
      posterPath: json['poster_path'] == null
          ? ''
          : $fromJsonToString(json['poster_path']),
      releaseDate: json['release_date'] == null
          ? ''
          : $fromJsonToString(json['release_date']),
      voteAverage: json['vote_average'] == null
          ? 0.0
          : $fromJsonToDouble(json['vote_average']),
    );

Map<String, dynamic> _$$MovieImplToJson(_$MovieImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'vote_average': instance.voteAverage,
    };
