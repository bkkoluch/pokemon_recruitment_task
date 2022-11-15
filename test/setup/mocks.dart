import 'package:mocktail/mocktail.dart';
import 'package:pokemon_recruitment_task/features/pokemon/data/data_sources/pokemon_remote_data_source.dart';
import 'package:pokemon_recruitment_task/features/pokemon/domain/repositories/pokemon_repository.dart';
import 'package:pokemon_recruitment_task/features/pokemon/domain/use_cases/search_for_pokemon_by_name_use_case.dart';
import 'package:pokemon_recruitment_task/features/pokemon/presentation/cubits/pokemon_cubit.dart';
import 'package:pokemon_recruitment_task/services/network_service/network_service.dart';

class MockNetworkService extends Mock implements NetworkService {}

class MockPokemonRemoteDataSource extends Mock
    implements PokemonRemoteDataSource {}

class MockPokemonRepository extends Mock implements PokemonRepository {}

class MockSearchForPokemonByNameUseCase extends Mock
    implements SearchPokemonByNameUseCase {}

class MockPokemonCubit extends Mock implements PokemonCubit {}
