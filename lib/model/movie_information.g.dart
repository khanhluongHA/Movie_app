// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieInformation _$MovieInformationFromJson(Map<String, dynamic> json) =>
    MovieInformation(
      name: json['name'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      origin_name: json['origin_name'] as String? ?? '',
      poster_url: json['poster_url'] as String? ?? '',
      thumb_url: json['thumb_url'] as String? ?? ' ',
      year: (json['year'] as num?)?.toInt() ?? 2020,
      isFavorite: json['isFavorite'] as bool? ?? false,
    );

Map<String, dynamic> _$MovieInformationToJson(MovieInformation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'origin_name': instance.origin_name,
      'poster_url': instance.poster_url,
      'thumb_url': instance.thumb_url,
      'year': instance.year,
      'isFavorite': instance.isFavorite,
    };
