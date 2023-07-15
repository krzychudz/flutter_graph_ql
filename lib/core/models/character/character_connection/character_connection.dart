import 'package:freezed_annotation/freezed_annotation.dart';

import '../character.dart';

part 'character_connection.freezed.dart';
part 'character_connection.g.dart';

@freezed
class CharacterConnection with _$CharacterConnection {
  factory CharacterConnection({
    required List<Character> characters,
  }) = _CharacterConnection;

  factory CharacterConnection.fromJson(Map<String, dynamic> json) =>
      _$CharacterConnectionFromJson(json);
}
