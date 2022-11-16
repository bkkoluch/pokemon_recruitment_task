import 'package:pokemon_recruitment_task/features/pokemon/domain/models/pokemon/pokemon.dart';

abstract class PokemonRemoteDataSource {
  Future<Pokemon> searchForPokemon(String name);
}
