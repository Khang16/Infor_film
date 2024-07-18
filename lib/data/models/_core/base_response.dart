import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true, createToJson: false)
class BaseResponse<T> {
  @JsonKey(name: 'page', defaultValue: 0)
  final int page;

  @JsonKey(name: 'results', defaultValue: [])
  final List<T> results;

  @JsonKey(name: 'total_pages', defaultValue: 0)
  final int totalPages;

  @JsonKey(name: 'total_results', defaultValue: 0)
  final int totalResults;

  @JsonKey(name: 'status_code')
  final int? statusCode;

  @JsonKey(name: 'status_message')
  final String? statusMessage;

  BaseResponse({
    this.page = 1,
    this.results = const [],
    this.totalPages = 0,
    this.totalResults = 0,
    this.statusCode,
    this.statusMessage,
  });

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic json) fromJsonT,
  ) =>
      _$BaseResponseFromJson(json, fromJsonT);
}
