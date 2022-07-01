// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watching.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Watching _$WatchingFromJson(Map<String, dynamic> json) => Watching(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPages: json['total_pages'] as int?,
      totalResults: json['total_results'] as int?,
    );

Map<String, dynamic> _$WatchingToJson(Watching instance) => <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
