import 'package:dio/dio.dart';
import 'package:pokemon_recruitment_task/core/errors/exceptions.dart';
import 'package:pokemon_recruitment_task/core/errors/failures.dart';
import 'package:pokemon_recruitment_task/features/pokemon/domain/models/pokemon/pokemon.dart';
import 'package:pokemon_recruitment_task/features/pokemon/domain/models/pokemon_sprites/pokemon_sprites.dart';

final RequestOptions tRequestOptions = RequestOptions(path: '');

const String tPokemonName = 'pikachu';

const Pokemon tPokemon = Pokemon(
  id: 1,
  name: tPokemonName,
  height: 123,
  weight: 123,
  abilities: [],
  forms: [],
  moves: [],
  sprites: PokemonSprites(
    frontDefault: 'frontDefault',
    frontShiny: 'frontShiny',
    backDefault: 'backDefault',
    backShiny: 'backShiny',
  ),
);

final Pokemon tOtherPokemon = tPokemon.copyWith(id: 2);
final Pokemon tYetAnotherPokemon = tPokemon.copyWith(id: 3);

const Map<String, dynamic> tPokemonJson = {
  'id': 1,
  'name': tPokemonName,
  'height': 123,
  'weight': 123,
  'abilities': [],
  'forms': [],
  'moves': [],
  'sprites': {
    'front_default': 'frontDefault',
    'front_shiny': 'frontShiny',
    'back_default': 'backDefault',
    'back_shiny': 'backShiny',
  }
};

const ServerException tServerException = ServerException('');
const ServerFailure tServerFailure = ServerFailure('');
