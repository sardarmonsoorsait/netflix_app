// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homeimage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Homeimage _$HomeimageFromJson(Map<String, dynamic> json) => Homeimage(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$HomeimageToJson(Homeimage instance) => <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };
