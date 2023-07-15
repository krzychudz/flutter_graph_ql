// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character {
  factory Character({
    required String id,
    required String name,
    required String skinColor,
    required String birthYear,
    required String hairColor,
    String? eyeColor,
    String? gender,
    int? mass,
    int? height,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}
