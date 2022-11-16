import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokemon_recruitment_task/features/pokemon/domain/use_cases/search_for_pokemon_by_name_use_case.dart';
import 'package:pokemon_recruitment_task/features/pokemon/presentation/cubits/pokemon_cubit.dart';
import 'package:pokemon_recruitment_task/features/pokemon/presentation/cubits/pokemon_state.dart';
import 'package:pokemon_recruitment_task/services/injection_container/injection_container.dart';

import '../../../../setup/mocks.dart';
import '../../../../setup/test_data.dart';

void main() {
  final MockSearchForPokemonByNameUseCase mockUseCase =
      MockSearchForPokemonByNameUseCase();

  PokemonCubit buildCubit() => PokemonCubit();

  PokemonState initialState = PokemonState.initial();

  setUpAll(() {
    getIt..registerFactory<SearchPokemonByNameUseCase>(() => mockUseCase);
  });

  group('PokemonCubit', () {
    group('searchForPokemonByName', () {
      blocTest<PokemonCubit, PokemonState>(
        'should emit loaded status with searched pokemon on a successful call',
        seed: () => initialState.copyWith(searchedPokemonName: tPokemonName),
        setUp: () {
          when(() => mockUseCase.call(captureAny()))
              .thenAnswer((_) async => const Right(tPokemon));
        },
        build: buildCubit,
        act: (cubit) => cubit.searchForPokemonByName(),
        verify: (_) {
          verify(() => mockUseCase.call(tPokemonName)).called(1);
        },
        expect: () => [
          initialState.copyWith(
            status: PokemonStateStatus.loading,
            searchedPokemonName: tPokemonName,
          ),
          initialState.copyWith(
            status: PokemonStateStatus.loaded,
            searchedPokemon: tPokemon,
            searchedPokemonName: tPokemonName,
          ),
        ],
      );

      blocTest<PokemonCubit, PokemonState>(
        'should emit error status with on an unsuccessful call',
        seed: () => initialState.copyWith(searchedPokemonName: tPokemonName),
        setUp: () {
          when(() => mockUseCase.call(captureAny()))
              .thenAnswer((_) async => const Left(tServerFailure));
        },
        build: buildCubit,
        act: (cubit) => cubit.searchForPokemonByName(),
        verify: (_) {
          verify(() => mockUseCase.call(tPokemonName)).called(1);
        },
        expect: () => [
          initialState.copyWith(
            status: PokemonStateStatus.loading,
            searchedPokemonName: tPokemonName,
          ),
          initialState.copyWith(
            status: PokemonStateStatus.error,
            searchedPokemonName: tPokemonName,
          ),
        ],
      );
    });

    group('updateSearchedName', () {
      blocTest<PokemonCubit, PokemonState>(
        'should emit updated name',
        build: buildCubit,
        act: (cubit) => cubit.updateSearchedName(tPokemonName),
        expect: () => [
          initialState.copyWith(searchedPokemonName: tPokemonName),
        ],
      );
    });

    group('addPokemonToFavorites', () {
      blocTest<PokemonCubit, PokemonState>(
        'should add pokemon to favorites',
        seed: () => initialState.copyWith(searchedPokemon: tPokemon),
        build: buildCubit,
        act: (cubit) => cubit.addPokemonToFavorites(),
        expect: () => [
          initialState.copyWith(
            searchedPokemon: tPokemon,
            favorites: [tPokemon],
          ),
        ],
      );
    });

    group('removePokemonFromFavorites', () {
      blocTest<PokemonCubit, PokemonState>(
        'should remove pokemon from favorites',
        seed: () => initialState.copyWith(
          searchedPokemon: tPokemon,
          favorites: [tPokemon],
        ),
        build: buildCubit,
        act: (cubit) => cubit.removePokemonFromFavorites(),
        expect: () => [
          initialState.copyWith(searchedPokemon: tPokemon),
        ],
      );
    });

    group('reorderFavourites', () {
      blocTest<PokemonCubit, PokemonState>(
        'should properly reoder favorites for newIndex > oldIndex',
        seed: () => initialState
            .copyWith(favorites: [tOtherPokemon, tYetAnotherPokemon, tPokemon]),
        build: buildCubit,
        act: (cubit) => cubit.reorderFavorites(0, 2),
        expect: () => [
          initialState.copyWith(
            favorites: [tYetAnotherPokemon, tOtherPokemon, tPokemon],
          ),
        ],
      );

      blocTest<PokemonCubit, PokemonState>(
        'should properly reoder favorites for newIndex < oldIndex',
        seed: () => initialState.copyWith(favorites: [tOtherPokemon, tPokemon]),
        build: buildCubit,
        act: (cubit) => cubit.reorderFavorites(1, 0),
        expect: () => [
          initialState.copyWith(
            favorites: [tPokemon, tOtherPokemon],
          ),
        ],
      );
    });
  });
}
