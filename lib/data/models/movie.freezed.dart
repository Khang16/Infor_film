// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
mixin _$Movie {
  @JsonKey(name: 'id', fromJson: $fromJsonToString)
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title', fromJson: $fromJsonToString)
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'overview', fromJson: $fromJsonToString)
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path', fromJson: $fromJsonToString)
  String get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date', fromJson: $fromJsonToString)
  String get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average', fromJson: $fromJsonToDouble)
  double get voteAverage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res, Movie>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', fromJson: $fromJsonToString) String id,
      @JsonKey(name: 'title', fromJson: $fromJsonToString) String title,
      @JsonKey(name: 'overview', fromJson: $fromJsonToString) String overview,
      @JsonKey(name: 'poster_path', fromJson: $fromJsonToString)
      String posterPath,
      @JsonKey(name: 'release_date', fromJson: $fromJsonToString)
      String releaseDate,
      @JsonKey(name: 'vote_average', fromJson: $fromJsonToDouble)
      double voteAverage});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res, $Val extends Movie>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? overview = null,
    Object? posterPath = null,
    Object? releaseDate = null,
    Object? voteAverage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieImplCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$$MovieImplCopyWith(
          _$MovieImpl value, $Res Function(_$MovieImpl) then) =
      __$$MovieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', fromJson: $fromJsonToString) String id,
      @JsonKey(name: 'title', fromJson: $fromJsonToString) String title,
      @JsonKey(name: 'overview', fromJson: $fromJsonToString) String overview,
      @JsonKey(name: 'poster_path', fromJson: $fromJsonToString)
      String posterPath,
      @JsonKey(name: 'release_date', fromJson: $fromJsonToString)
      String releaseDate,
      @JsonKey(name: 'vote_average', fromJson: $fromJsonToDouble)
      double voteAverage});
}

/// @nodoc
class __$$MovieImplCopyWithImpl<$Res>
    extends _$MovieCopyWithImpl<$Res, _$MovieImpl>
    implements _$$MovieImplCopyWith<$Res> {
  __$$MovieImplCopyWithImpl(
      _$MovieImpl _value, $Res Function(_$MovieImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? overview = null,
    Object? posterPath = null,
    Object? releaseDate = null,
    Object? voteAverage = null,
  }) {
    return _then(_$MovieImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieImpl extends _Movie {
  _$MovieImpl(
      {@JsonKey(name: 'id', fromJson: $fromJsonToString) this.id = '',
      @JsonKey(name: 'title', fromJson: $fromJsonToString) this.title = '',
      @JsonKey(name: 'overview', fromJson: $fromJsonToString)
      this.overview = '',
      @JsonKey(name: 'poster_path', fromJson: $fromJsonToString)
      this.posterPath = '',
      @JsonKey(name: 'release_date', fromJson: $fromJsonToString)
      this.releaseDate = '',
      @JsonKey(name: 'vote_average', fromJson: $fromJsonToDouble)
      this.voteAverage = 0.0})
      : super._();

  factory _$MovieImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieImplFromJson(json);

  @override
  @JsonKey(name: 'id', fromJson: $fromJsonToString)
  final String id;
  @override
  @JsonKey(name: 'title', fromJson: $fromJsonToString)
  final String title;
  @override
  @JsonKey(name: 'overview', fromJson: $fromJsonToString)
  final String overview;
  @override
  @JsonKey(name: 'poster_path', fromJson: $fromJsonToString)
  final String posterPath;
  @override
  @JsonKey(name: 'release_date', fromJson: $fromJsonToString)
  final String releaseDate;
  @override
  @JsonKey(name: 'vote_average', fromJson: $fromJsonToDouble)
  final double voteAverage;

  @override
  String toString() {
    return 'Movie(id: $id, title: $title, overview: $overview, posterPath: $posterPath, releaseDate: $releaseDate, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, overview, posterPath, releaseDate, voteAverage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      __$$MovieImplCopyWithImpl<_$MovieImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieImplToJson(
      this,
    );
  }
}

abstract class _Movie extends Movie {
  factory _Movie(
      {@JsonKey(name: 'id', fromJson: $fromJsonToString) final String id,
      @JsonKey(name: 'title', fromJson: $fromJsonToString) final String title,
      @JsonKey(name: 'overview', fromJson: $fromJsonToString)
      final String overview,
      @JsonKey(name: 'poster_path', fromJson: $fromJsonToString)
      final String posterPath,
      @JsonKey(name: 'release_date', fromJson: $fromJsonToString)
      final String releaseDate,
      @JsonKey(name: 'vote_average', fromJson: $fromJsonToDouble)
      final double voteAverage}) = _$MovieImpl;
  _Movie._() : super._();

  factory _Movie.fromJson(Map<String, dynamic> json) = _$MovieImpl.fromJson;

  @override
  @JsonKey(name: 'id', fromJson: $fromJsonToString)
  String get id;
  @override
  @JsonKey(name: 'title', fromJson: $fromJsonToString)
  String get title;
  @override
  @JsonKey(name: 'overview', fromJson: $fromJsonToString)
  String get overview;
  @override
  @JsonKey(name: 'poster_path', fromJson: $fromJsonToString)
  String get posterPath;
  @override
  @JsonKey(name: 'release_date', fromJson: $fromJsonToString)
  String get releaseDate;
  @override
  @JsonKey(name: 'vote_average', fromJson: $fromJsonToDouble)
  double get voteAverage;
  @override
  @JsonKey(ignore: true)
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
