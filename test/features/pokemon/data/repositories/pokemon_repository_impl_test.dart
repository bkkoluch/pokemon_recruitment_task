import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokemon_recruitment_task/core/errors/failures.dart';
import 'package:pokemon_recruitment_task/features/pokemon/data/repositories/pokemon_repository_impl.dart';

import '../../../../setup/mocks.dart';
import '../../../../setup/test_data.dart';

void main() {
  final MockPokemonRemoteDataSource mockPokemonRemoteDataSource =
      MockPokemonRemoteDataSource();

  final PokemonRepositoryImpl pokemonRepositoryImpl =
      PokemonRepositoryImpl(mockPokemonRemoteDataSource);

  group('PokemonRepositoryImpl', () {
    group('searchForPokemon', () {
      test(
        'should call repository properly and return Right(Pokemon) if the call is successful',
        () async {
          // Arrange
          when(() => mockPokemonRemoteDataSource.searchForPokemon(captureAny()))
              .thenAnswer((_) async => tPokemon);

          // Act
          final result =
              await pokemonRepositoryImpl.searchForPokemon(tPokemonName);

          // Assert
          verify(
            () => mockPokemonRemoteDataSource.searchForPokemon(tPokemonName),
          ).called(1);
          expect(result, const Right(tPokemon));
        },
      );

      test(
        'should call repository properly and return Left(ServerException) if the call is unsuccessful',
        () async {
          // Arrange
          when(() => mockPokemonRemoteDataSource.searchForPokemon(captureAny()))
              .thenThrow(tServerException);

          // Act
          final result =
              await pokemonRepositoryImpl.searchForPokemon(tPokemonName);

          // Assert
          verify(
            () => mockPokemonRemoteDataSource.searchForPokemon(tPokemonName),
          ).called(1);
          expect(result, const Left(ServerFailure('searchForPokemon')));
        },
      );
    });
  });
}
