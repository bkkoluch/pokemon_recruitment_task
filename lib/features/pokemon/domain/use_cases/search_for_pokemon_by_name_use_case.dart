import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon_recruitment_task/core/domain/use_case.dart';
import 'package:pokemon_recruitment_task/core/errors/failures.dart';
import 'package:pokemon_recruitment_task/features/pokemon/domain/models/pokemon/pokemon.dart';
import 'package:pokemon_recruitment_task/features/pokemon/domain/repositories/pokemon_repository.dart';

@injectable
class SearchPokemonByNameUseCase
    implements UseCase<Future<Either<Failure, Pokemon>>, String> {
  final PokemonRepository pokemonRepository;

  const SearchPokemonByNameUseCase(this.pokemonRepository);

  @override
  Future<Either<Failure, Pokemon>> call(String name) =>
      pokemonRepository.searchForPokemon(name);
}
