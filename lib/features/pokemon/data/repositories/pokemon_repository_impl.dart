import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon_recruitment_task/core/errors/exceptions.dart';
import 'package:pokemon_recruitment_task/core/errors/failures.dart';
import 'package:pokemon_recruitment_task/features/pokemon/data/data_sources/pokemon_remote_data_source.dart';
import 'package:pokemon_recruitment_task/features/pokemon/domain/models/pokemon/pokemon.dart';
import 'package:pokemon_recruitment_task/features/pokemon/domain/repositories/pokemon_repository.dart';

@Injectable(as: PokemonRepository)
class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonRemoteDataSource pokemonRemoteDataSource;

  const PokemonRepositoryImpl(this.pokemonRemoteDataSource);

  @override
  Future<Either<Failure, Pokemon>> searchForPokemon(String name) async {
    try {
      final Pokemon pokemon =
          await pokemonRemoteDataSource.searchForPokemon(name);
      return Right(pokemon);
    } on ServerException {
      return const Left(ServerFailure('searchForPokemon'));
    }
  }
}
