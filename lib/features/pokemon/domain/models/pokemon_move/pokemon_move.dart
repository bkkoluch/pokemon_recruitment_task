import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_recruitment_task/features/pokemon/domain/models/pokemon_move/move.dart';

part 'pokemon_move.freezed.dart';
part 'pokemon_move.g.dart';

@freezed
class PokemonMove with _$PokemonMove {
  const PokemonMove._();

  const factory PokemonMove({required Move move}) = _PokemonMove;

  factory PokemonMove.fromJson(Map<String, dynamic> json) =>
      _$PokemonMoveFromJson(json);
}
