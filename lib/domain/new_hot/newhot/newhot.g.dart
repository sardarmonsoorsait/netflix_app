// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'newhot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Newhot _$NewhotFromJson(Map<String, dynamic> json) => Newhot(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$NewhotToJson(Newhot instance) => <String, dynamic>{
      'results': instance.results,
    };
