import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokemon_recruitment_task/core/errors/exceptions.dart';
import 'package:pokemon_recruitment_task/features/pokemon/data/data_sources/pokemon_remote_data_source_impl.dart';

import '../../../../setup/mocks.dart';
import '../../../../setup/test_data.dart';

void main() {
  final MockNetworkService mockNetworkService = MockNetworkService();

  final PokemonRemoteDataSourceImpl pokemonRemoteDataSourceImpl =
      PokemonRemoteDataSourceImpl(mockNetworkService);

  group('PokemonRemoteDataSourceImpl', () {
    group('searchForPokemon', () {
      test(
        'should return Pokemon on successful call',
        () async {
          // Arrange
          when(() => mockNetworkService.get(url: any(named: 'url'))).thenAnswer(
            (_) async => Response(
              requestOptions: tRequestOptions,
              data: tPokemonJson,
            ),
          );

          // Act
          final result =
              await pokemonRemoteDataSourceImpl.searchForPokemon(tPokemonName);

          // Assert

          expect(result, tPokemon);
        },
      );

      test(
        'should throw ServerException on DioError',
        () {
          // Arrange
          when(() => mockNetworkService.get(url: any(named: 'url')))
              .thenThrow(tServerException);

          // Act
          final result =
              pokemonRemoteDataSourceImpl.searchForPokemon(tPokemonName);

          // Assert

          expect(result, throwsA(isA<ServerException>()));
        },
      );
    });
  });
}
