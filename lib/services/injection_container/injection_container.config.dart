// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pokemon_recruitment_task/features/pokemon/data/data_sources/pokemon_remote_data_source.dart'
    as _i6;
import 'package:pokemon_recruitment_task/features/pokemon/data/data_sources/pokemon_remote_data_source_impl.dart'
    as _i7;
import 'package:pokemon_recruitment_task/features/pokemon/data/repositories/pokemon_repository_impl.dart'
    as _i9;
import 'package:pokemon_recruitment_task/features/pokemon/domain/repositories/pokemon_repository.dart'
    as _i8;
import 'package:pokemon_recruitment_task/features/pokemon/domain/use_cases/search_for_pokemon_by_name_use_case.dart'
    as _i10;
import 'package:pokemon_recruitment_task/features/pokemon/presentation/cubits/pokemon_cubit.dart'
    as _i5;
import 'package:pokemon_recruitment_task/services/network_service/network_service.dart'
    as _i3;
import 'package:pokemon_recruitment_task/services/network_service/network_service_impl.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.NetworkService>(() => _i4.NetworkServiceImpl());
  gh.factory<_i5.PokemonCubit>(() => _i5.PokemonCubit());
  gh.factory<_i6.PokemonRemoteDataSource>(
      () => _i7.PokemonRemoteDataSourceImpl(get<_i3.NetworkService>()));
  gh.factory<_i8.PokemonRepository>(
      () => _i9.PokemonRepositoryImpl(get<_i6.PokemonRemoteDataSource>()));
  gh.factory<_i10.SearchPokemonByNameUseCase>(
      () => _i10.SearchPokemonByNameUseCase(get<_i8.PokemonRepository>()));
  return get;
}
