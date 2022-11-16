import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_recruitment_task/features/pokemon/domain/models/pokemon_ability/ability.dart';

part 'pokemon_ability.freezed.dart';
part 'pokemon_ability.g.dart';

@freezed
class PokemonAbility with _$PokemonAbility {
  const PokemonAbility._();

  const factory PokemonAbility({required Ability ability}) = _PokemonAbility;

  factory PokemonAbility.fromJson(Map<String, dynamic> json) =>
      _$PokemonAbilityFromJson(json);
}
