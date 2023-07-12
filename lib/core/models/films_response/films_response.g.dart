// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'films_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilmsResponse _$$_FilmsResponseFromJson(Map<String, dynamic> json) =>
    _$_FilmsResponse(
      films: (json['films'] as List<dynamic>)
          .map((e) => Film.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
