import 'package:dartz/dartz.dart';
import 'package:pokemon_recruitment_task/core/errors/failures.dart';
import 'package:pokemon_recruitment_task/features/pokemon/domain/models/pokemon/pokemon.dart';

abstract class PokemonRepository {
  Future<Either<Failure, Pokemon>> searchForPokemon(String name);
}
