import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_recruitment_task/features/pokemon/domain/models/pokemon_ability/pokemon_ability.dart';
import 'package:pokemon_recruitment_task/features/pokemon/domain/models/pokemon_form/pokemon_form.dart';
import 'package:pokemon_recruitment_task/features/pokemon/domain/models/pokemon_move/pokemon_move.dart';
import 'package:pokemon_recruitment_task/features/pokemon/domain/models/pokemon_sprites/pokemon_sprites.dart';

part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

@freezed
class Pokemon with _$Pokemon {
  const Pokemon._();

  const factory Pokemon({
    required int id,
    required String name,
    required int height,
    required int weight,
    required List<PokemonAbility> abilities,
    required List<PokemonForm> forms,
    required List<PokemonMove> moves,
    required PokemonSprites sprites,
  }) = _Pokemon;

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);
}
