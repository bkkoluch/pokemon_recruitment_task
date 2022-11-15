// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PokemonState {
  PokemonStateStatus get status => throw _privateConstructorUsedError;
  List<Pokemon> get favorites => throw _privateConstructorUsedError;
  Pokemon? get searchedPokemon => throw _privateConstructorUsedError;
  dynamic get searchedPokemonName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonStateCopyWith<PokemonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStateCopyWith<$Res> {
  factory $PokemonStateCopyWith(
          PokemonState value, $Res Function(PokemonState) then) =
      _$PokemonStateCopyWithImpl<$Res, PokemonState>;
  @useResult
  $Res call(
      {PokemonStateStatus status,
      List<Pokemon> favorites,
      Pokemon? searchedPokemon,
      dynamic searchedPokemonName});

  $PokemonCopyWith<$Res>? get searchedPokemon;
}

/// @nodoc
class _$PokemonStateCopyWithImpl<$Res, $Val extends PokemonState>
    implements $PokemonStateCopyWith<$Res> {
  _$PokemonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? favorites = null,
    Object? searchedPokemon = freezed,
    Object? searchedPokemonName = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PokemonStateStatus,
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
      searchedPokemon: freezed == searchedPokemon
          ? _value.searchedPokemon
          : searchedPokemon // ignore: cast_nullable_to_non_nullable
              as Pokemon?,
      searchedPokemonName: null == searchedPokemonName
          ? _value.searchedPokemonName
          : searchedPokemonName // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonCopyWith<$Res>? get searchedPokemon {
    if (_value.searchedPokemon == null) {
      return null;
    }

    return $PokemonCopyWith<$Res>(_value.searchedPokemon!, (value) {
      return _then(_value.copyWith(searchedPokemon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonStateCopyWith<$Res>
    implements $PokemonStateCopyWith<$Res> {
  factory _$$_PokemonStateCopyWith(
          _$_PokemonState value, $Res Function(_$_PokemonState) then) =
      __$$_PokemonStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PokemonStateStatus status,
      List<Pokemon> favorites,
      Pokemon? searchedPokemon,
      dynamic searchedPokemonName});

  @override
  $PokemonCopyWith<$Res>? get searchedPokemon;
}

/// @nodoc
class __$$_PokemonStateCopyWithImpl<$Res>
    extends _$PokemonStateCopyWithImpl<$Res, _$_PokemonState>
    implements _$$_PokemonStateCopyWith<$Res> {
  __$$_PokemonStateCopyWithImpl(
      _$_PokemonState _value, $Res Function(_$_PokemonState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? favorites = null,
    Object? searchedPokemon = freezed,
    Object? searchedPokemonName = null,
  }) {
    return _then(_$_PokemonState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PokemonStateStatus,
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
      searchedPokemon: freezed == searchedPokemon
          ? _value.searchedPokemon
          : searchedPokemon // ignore: cast_nullable_to_non_nullable
              as Pokemon?,
      searchedPokemonName: null == searchedPokemonName
          ? _value.searchedPokemonName
          : searchedPokemonName,
    ));
  }
}

/// @nodoc

class _$_PokemonState extends _PokemonState {
  const _$_PokemonState(
      {required this.status,
      final List<Pokemon> favorites = const [],
      this.searchedPokemon,
      this.searchedPokemonName = ''})
      : _favorites = favorites,
        super._();

  @override
  final PokemonStateStatus status;
  final List<Pokemon> _favorites;
  @override
  @JsonKey()
  List<Pokemon> get favorites {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  final Pokemon? searchedPokemon;
  @override
  @JsonKey()
  final dynamic searchedPokemonName;

  @override
  String toString() {
    return 'PokemonState(status: $status, favorites: $favorites, searchedPokemon: $searchedPokemon, searchedPokemonName: $searchedPokemonName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites) &&
            (identical(other.searchedPokemon, searchedPokemon) ||
                other.searchedPokemon == searchedPokemon) &&
            const DeepCollectionEquality()
                .equals(other.searchedPokemonName, searchedPokemonName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_favorites),
      searchedPokemon,
      const DeepCollectionEquality().hash(searchedPokemonName));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonStateCopyWith<_$_PokemonState> get copyWith =>
      __$$_PokemonStateCopyWithImpl<_$_PokemonState>(this, _$identity);
}

abstract class _PokemonState extends PokemonState {
  const factory _PokemonState(
      {required final PokemonStateStatus status,
      final List<Pokemon> favorites,
      final Pokemon? searchedPokemon,
      final dynamic searchedPokemonName}) = _$_PokemonState;
  const _PokemonState._() : super._();

  @override
  PokemonStateStatus get status;
  @override
  List<Pokemon> get favorites;
  @override
  Pokemon? get searchedPokemon;
  @override
  dynamic get searchedPokemonName;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonStateCopyWith<_$_PokemonState> get copyWith =>
      throw _privateConstructorUsedError;
}
