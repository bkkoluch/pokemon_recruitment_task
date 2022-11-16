import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_recruitment_task/features/pokemon/domain/models/pokemon/pokemon.dart';

part 'pokemon_state.freezed.dart';

enum PokemonStateStatus {
  idle,
  loading,
  error,
  loaded,
}

@freezed
class PokemonState with _$PokemonState {
  const PokemonState._();

  const factory PokemonState({
    required PokemonStateStatus status,
    @Default([]) List<Pokemon> favorites,
    Pokemon? searchedPokemon,
    @Default('') String searchedPokemonName,
  }) = _PokemonState;

  factory PokemonState.initial() =>
      const PokemonState(status: PokemonStateStatus.idle);

  bool get isLoading => status == PokemonStateStatus.loading;

  bool get isFullyLoaded =>
      status == PokemonStateStatus.loaded && searchedPokemon != null;

  bool get isError => status == PokemonStateStatus.error;

  bool get isIdle => status == PokemonStateStatus.idle;
}
