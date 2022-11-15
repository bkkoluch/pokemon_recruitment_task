import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon_recruitment_task/core/data/endpoints.dart';
import 'package:pokemon_recruitment_task/core/errors/exceptions.dart';
import 'package:pokemon_recruitment_task/features/pokemon/data/data_sources/pokemon_remote_data_source.dart';
import 'package:pokemon_recruitment_task/features/pokemon/domain/models/pokemon/pokemon.dart';
import 'package:pokemon_recruitment_task/services/network_service/network_service.dart';

@Injectable(as: PokemonRemoteDataSource)
class PokemonRemoteDataSourceImpl implements PokemonRemoteDataSource {
  final NetworkService networkService;

  const PokemonRemoteDataSourceImpl(this.networkService);

  @override
  Future<Pokemon> searchForPokemon(String name) async {
    try {
      final result =
          await networkService.get(url: '${Endpoints.pokemon}/$name');

      return Pokemon.fromJson(result.data);
    } on DioError catch (e) {
      throw ServerException(e.toString());
    }
  }
}
