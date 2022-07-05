import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'homeimage.g.dart';

@JsonSerializable()
class Homeimage {
  int? page;
  List<Result> results;

  Homeimage({this.page, this.results = const []});

  factory Homeimage.fromJson(Map<String, dynamic> json) {
    return _$HomeimageFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeimageToJson(this);
}
