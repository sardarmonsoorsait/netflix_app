import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'watching.g.dart';

@JsonSerializable()
class Watching {
  int? page;
   @JsonKey(name: 'results')
  List<Result> results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;
  
  Watching({this.page, this.results =const [], this.totalPages, this.totalResults});

  factory Watching.fromJson(Map<String, dynamic> json) {
    return _$WatchingFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WatchingToJson(this);
}
