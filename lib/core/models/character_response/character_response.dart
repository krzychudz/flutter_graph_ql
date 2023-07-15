// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_graph_ql/core/models/character/character.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_response.freezed.dart';
part 'character_response.g.dart';

@freezed
class CharacterResponse with _$CharacterResponse {
  factory CharacterResponse({
    required Character person,
  }) = _CharacterResponse;

  factory CharacterResponse.fromJson(Map<String, dynamic> json) =>
      _$CharacterResponseFromJson(json);
}
