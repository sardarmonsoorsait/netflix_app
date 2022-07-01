import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'newhot.g.dart';

@JsonSerializable()
class Newhot {
  List<Result> results;

  Newhot({
    this.results = const [],
  });

  factory Newhot.fromJson(Map<String, dynamic> json) {
    return _$NewhotFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NewhotToJson(this);
}
