import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon_recruitment_task/core/errors/failures.dart';
import 'package:pokemon_recruitment_task/features/pokemon/domain/models/pokemon/pokemon.dart';
import 'package:pokemon_recruitment_task/features/pokemon/domain/use_cases/search_for_pokemon_by_name_use_case.dart';
import 'package:pokemon_recruitment_task/features/pokemon/presentation/cubits/pokemon_state.dart';
import 'package:pokemon_recruitment_task/services/injection_container/injection_container.dart';

@injectable
class PokemonCubit extends Cubit<PokemonState> {
  PokemonCubit() : super(PokemonState.initial());

  Future<void> searchForPokemonByName() async {
    emit(state.copyWith(status: PokemonStateStatus.loading));

    final Either<Failure, Pokemon> result =
        await getIt.get<SearchPokemonByNameUseCase>()(
      state.searchedPokemonName.toLowerCase(),
    );

    result.fold(
      (_) {
        emit(state.copyWith(status: PokemonStateStatus.error));
      },
      (Pokemon pokemon) {
        emit(
          state.copyWith(
            searchedPokemon: pokemon,
            status: PokemonStateStatus.loaded,
          ),
        );
      },
    );
  }

  void updateSearchedName(String name) =>
      emit(state.copyWith(searchedPokemonName: name));

  void addPokemonToFavorites() => _manipulateFavorites();

  void removePokemonFromFavorites() => _manipulateFavorites(shouldAdd: false);

  void reorderFavorites(int oldIndex, int newIndex) {
    final Pokemon pokemonToReorder = state.favorites[oldIndex];
    final List<Pokemon> newFavorites = [...state.favorites];
    if (oldIndex > newIndex) {
      newFavorites
        ..removeAt(oldIndex)
        ..insert(newIndex, pokemonToReorder);
    } else {
      newFavorites
        ..insert(newIndex, pokemonToReorder)
        ..removeAt(oldIndex);
    }

    emit(state.copyWith(favorites: newFavorites));
  }

  void _manipulateFavorites({bool shouldAdd = true}) {
    List<Pokemon> newFavorites = [...state.favorites];

    if (shouldAdd) {
      newFavorites.add(state.searchedPokemon!);
    } else {
      newFavorites.remove(state.searchedPokemon!);
    }

    emit(state.copyWith(favorites: newFavorites));
  }
}
