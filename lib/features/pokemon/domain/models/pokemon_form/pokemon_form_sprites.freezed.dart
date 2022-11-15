// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_form_sprites.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonFormSprites _$PokemonFormSpritesFromJson(Map<String, dynamic> json) {
  return _PokemonFormSprites.fromJson(json);
}

/// @nodoc
mixin _$PokemonFormSprites {
  @JsonKey(name: 'front_default')
  String get frontDefault => throw _privateConstructorUsedError;
  @JsonKey(name: 'front_shiny')
  String get frontShiny => throw _privateConstructorUsedError;
  @JsonKey(name: 'back_default')
  String get backDefault => throw _privateConstructorUsedError;
  @JsonKey(name: 'back_shiny')
  String get backShiny => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonFormSpritesCopyWith<PokemonFormSprites> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonFormSpritesCopyWith<$Res> {
  factory $PokemonFormSpritesCopyWith(
          PokemonFormSprites value, $Res Function(PokemonFormSprites) then) =
      _$PokemonFormSpritesCopyWithImpl<$Res, PokemonFormSprites>;
  @useResult
  $Res call(
      {@JsonKey(name: 'front_default') String frontDefault,
      @JsonKey(name: 'front_shiny') String frontShiny,
      @JsonKey(name: 'back_default') String backDefault,
      @JsonKey(name: 'back_shiny') String backShiny});
}

/// @nodoc
class _$PokemonFormSpritesCopyWithImpl<$Res, $Val extends PokemonFormSprites>
    implements $PokemonFormSpritesCopyWith<$Res> {
  _$PokemonFormSpritesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
    Object? frontShiny = null,
    Object? backDefault = null,
    Object? backShiny = null,
  }) {
    return _then(_value.copyWith(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frontShiny: null == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String,
      backDefault: null == backDefault
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String,
      backShiny: null == backShiny
          ? _value.backShiny
          : backShiny // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonFormSpritesCopyWith<$Res>
    implements $PokemonFormSpritesCopyWith<$Res> {
  factory _$$_PokemonFormSpritesCopyWith(_$_PokemonFormSprites value,
          $Res Function(_$_PokemonFormSprites) then) =
      __$$_PokemonFormSpritesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'front_default') String frontDefault,
      @JsonKey(name: 'front_shiny') String frontShiny,
      @JsonKey(name: 'back_default') String backDefault,
      @JsonKey(name: 'back_shiny') String backShiny});
}

/// @nodoc
class __$$_PokemonFormSpritesCopyWithImpl<$Res>
    extends _$PokemonFormSpritesCopyWithImpl<$Res, _$_PokemonFormSprites>
    implements _$$_PokemonFormSpritesCopyWith<$Res> {
  __$$_PokemonFormSpritesCopyWithImpl(
      _$_PokemonFormSprites _value, $Res Function(_$_PokemonFormSprites) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
    Object? frontShiny = null,
    Object? backDefault = null,
    Object? backShiny = null,
  }) {
    return _then(_$_PokemonFormSprites(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frontShiny: null == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String,
      backDefault: null == backDefault
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String,
      backShiny: null == backShiny
          ? _value.backShiny
          : backShiny // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonFormSprites extends _PokemonFormSprites {
  const _$_PokemonFormSprites(
      {@JsonKey(name: 'front_default') required this.frontDefault,
      @JsonKey(name: 'front_shiny') required this.frontShiny,
      @JsonKey(name: 'back_default') required this.backDefault,
      @JsonKey(name: 'back_shiny') required this.backShiny})
      : super._();

  factory _$_PokemonFormSprites.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonFormSpritesFromJson(json);

  @override
  @JsonKey(name: 'front_default')
  final String frontDefault;
  @override
  @JsonKey(name: 'front_shiny')
  final String frontShiny;
  @override
  @JsonKey(name: 'back_default')
  final String backDefault;
  @override
  @JsonKey(name: 'back_shiny')
  final String backShiny;

  @override
  String toString() {
    return 'PokemonFormSprites(frontDefault: $frontDefault, frontShiny: $frontShiny, backDefault: $backDefault, backShiny: $backShiny)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonFormSprites &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault) &&
            (identical(other.frontShiny, frontShiny) ||
                other.frontShiny == frontShiny) &&
            (identical(other.backDefault, backDefault) ||
                other.backDefault == backDefault) &&
            (identical(other.backShiny, backShiny) ||
                other.backShiny == backShiny));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, frontDefault, frontShiny, backDefault, backShiny);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonFormSpritesCopyWith<_$_PokemonFormSprites> get copyWith =>
      __$$_PokemonFormSpritesCopyWithImpl<_$_PokemonFormSprites>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonFormSpritesToJson(
      this,
    );
  }
}

abstract class _PokemonFormSprites extends PokemonFormSprites {
  const factory _PokemonFormSprites(
          {@JsonKey(name: 'front_default') required final String frontDefault,
          @JsonKey(name: 'front_shiny') required final String frontShiny,
          @JsonKey(name: 'back_default') required final String backDefault,
          @JsonKey(name: 'back_shiny') required final String backShiny}) =
      _$_PokemonFormSprites;
  const _PokemonFormSprites._() : super._();

  factory _PokemonFormSprites.fromJson(Map<String, dynamic> json) =
      _$_PokemonFormSprites.fromJson;

  @override
  @JsonKey(name: 'front_default')
  String get frontDefault;
  @override
  @JsonKey(name: 'front_shiny')
  String get frontShiny;
  @override
  @JsonKey(name: 'back_default')
  String get backDefault;
  @override
  @JsonKey(name: 'back_shiny')
  String get backShiny;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonFormSpritesCopyWith<_$_PokemonFormSprites> get copyWith =>
      throw _privateConstructorUsedError;
}
