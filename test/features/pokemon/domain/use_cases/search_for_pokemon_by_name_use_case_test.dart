import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokemon_recruitment_task/features/pokemon/domain/use_cases/search_for_pokemon_by_name_use_case.dart';

import '../../../../setup/mocks.dart';
import '../../../../setup/test_data.dart';

void main() {
  final MockPokemonRepository mockPokemonRepository = MockPokemonRepository();

  final SearchPokemonByNameUseCase useCase =
      SearchPokemonByNameUseCase(mockPokemonRepository);

  group('SearchPokemonByNameUseCase', () {
    test(
      'should return properly call repository and return Pokemon on a successful cal',
      () async {
        // Arrange
        when(() => mockPokemonRepository.searchForPokemon(captureAny()))
            .thenAnswer((_) async => const Right(tPokemon));

        // Act
        final result = await useCase.call(tPokemonName);

        // Assert
        verify(() => mockPokemonRepository.searchForPokemon(tPokemonName))
            .called(1);
        expect(result, const Right(tPokemon));
      },
    );

    test(
      'should return properly call repository and return Failure on an unsuccessful cal',
      () async {
        // Arrange
        when(() => mockPokemonRepository.searchForPokemon(captureAny()))
            .thenAnswer((_) async => const Left(tServerFailure));

        // Act
        final result = await useCase.call(tPokemonName);

        // Assert
        verify(() => mockPokemonRepository.searchForPokemon(tPokemonName))
            .called(1);
        expect(result, const Left(tServerFailure));
      },
    );
  });
}
