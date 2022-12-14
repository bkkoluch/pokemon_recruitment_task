// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_ability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonAbility _$PokemonAbilityFromJson(Map<String, dynamic> json) {
  return _PokemonAbility.fromJson(json);
}

/// @nodoc
mixin _$PokemonAbility {
  Ability get ability => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonAbilityCopyWith<PokemonAbility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonAbilityCopyWith<$Res> {
  factory $PokemonAbilityCopyWith(
          PokemonAbility value, $Res Function(PokemonAbility) then) =
      _$PokemonAbilityCopyWithImpl<$Res, PokemonAbility>;
  @useResult
  $Res call({Ability ability});

  $AbilityCopyWith<$Res> get ability;
}

/// @nodoc
class _$PokemonAbilityCopyWithImpl<$Res, $Val extends PokemonAbility>
    implements $PokemonAbilityCopyWith<$Res> {
  _$PokemonAbilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = null,
  }) {
    return _then(_value.copyWith(
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as Ability,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AbilityCopyWith<$Res> get ability {
    return $AbilityCopyWith<$Res>(_value.ability, (value) {
      return _then(_value.copyWith(ability: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonAbilityCopyWith<$Res>
    implements $PokemonAbilityCopyWith<$Res> {
  factory _$$_PokemonAbilityCopyWith(
          _$_PokemonAbility value, $Res Function(_$_PokemonAbility) then) =
      __$$_PokemonAbilityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Ability ability});

  @override
  $AbilityCopyWith<$Res> get ability;
}

/// @nodoc
class __$$_PokemonAbilityCopyWithImpl<$Res>
    extends _$PokemonAbilityCopyWithImpl<$Res, _$_PokemonAbility>
    implements _$$_PokemonAbilityCopyWith<$Res> {
  __$$_PokemonAbilityCopyWithImpl(
      _$_PokemonAbility _value, $Res Function(_$_PokemonAbility) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = null,
  }) {
    return _then(_$_PokemonAbility(
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as Ability,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonAbility extends _PokemonAbility {
  const _$_PokemonAbility({required this.ability}) : super._();

  factory _$_PokemonAbility.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonAbilityFromJson(json);

  @override
  final Ability ability;

  @override
  String toString() {
    return 'PokemonAbility(ability: $ability)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonAbility &&
            (identical(other.ability, ability) || other.ability == ability));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ability);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonAbilityCopyWith<_$_PokemonAbility> get copyWith =>
      __$$_PokemonAbilityCopyWithImpl<_$_PokemonAbility>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonAbilityToJson(
      this,
    );
  }
}

abstract class _PokemonAbility extends PokemonAbility {
  const factory _PokemonAbility({required final Ability ability}) =
      _$_PokemonAbility;
  const _PokemonAbility._() : super._();

  factory _PokemonAbility.fromJson(Map<String, dynamic> json) =
      _$_PokemonAbility.fromJson;

  @override
  Ability get ability;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonAbilityCopyWith<_$_PokemonAbility> get copyWith =>
      throw _privateConstructorUsedError;
}
