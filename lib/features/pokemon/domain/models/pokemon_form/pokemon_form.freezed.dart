// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonForm _$PokemonFormFromJson(Map<String, dynamic> json) {
  return _PokemonForm.fromJson(json);
}

/// @nodoc
mixin _$PokemonForm {
  String get name => throw _privateConstructorUsedError;
  PokemonFormSprites? get sprites => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonFormCopyWith<PokemonForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonFormCopyWith<$Res> {
  factory $PokemonFormCopyWith(
          PokemonForm value, $Res Function(PokemonForm) then) =
      _$PokemonFormCopyWithImpl<$Res, PokemonForm>;
  @useResult
  $Res call({String name, PokemonFormSprites? sprites});

  $PokemonFormSpritesCopyWith<$Res>? get sprites;
}

/// @nodoc
class _$PokemonFormCopyWithImpl<$Res, $Val extends PokemonForm>
    implements $PokemonFormCopyWith<$Res> {
  _$PokemonFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? sprites = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sprites: freezed == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokemonFormSprites?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonFormSpritesCopyWith<$Res>? get sprites {
    if (_value.sprites == null) {
      return null;
    }

    return $PokemonFormSpritesCopyWith<$Res>(_value.sprites!, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonFormCopyWith<$Res>
    implements $PokemonFormCopyWith<$Res> {
  factory _$$_PokemonFormCopyWith(
          _$_PokemonForm value, $Res Function(_$_PokemonForm) then) =
      __$$_PokemonFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, PokemonFormSprites? sprites});

  @override
  $PokemonFormSpritesCopyWith<$Res>? get sprites;
}

/// @nodoc
class __$$_PokemonFormCopyWithImpl<$Res>
    extends _$PokemonFormCopyWithImpl<$Res, _$_PokemonForm>
    implements _$$_PokemonFormCopyWith<$Res> {
  __$$_PokemonFormCopyWithImpl(
      _$_PokemonForm _value, $Res Function(_$_PokemonForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? sprites = freezed,
  }) {
    return _then(_$_PokemonForm(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sprites: freezed == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokemonFormSprites?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonForm extends _PokemonForm {
  const _$_PokemonForm({required this.name, this.sprites}) : super._();

  factory _$_PokemonForm.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonFormFromJson(json);

  @override
  final String name;
  @override
  final PokemonFormSprites? sprites;

  @override
  String toString() {
    return 'PokemonForm(name: $name, sprites: $sprites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonForm &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sprites, sprites) || other.sprites == sprites));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, sprites);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonFormCopyWith<_$_PokemonForm> get copyWith =>
      __$$_PokemonFormCopyWithImpl<_$_PokemonForm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonFormToJson(
      this,
    );
  }
}

abstract class _PokemonForm extends PokemonForm {
  const factory _PokemonForm(
      {required final String name,
      final PokemonFormSprites? sprites}) = _$_PokemonForm;
  const _PokemonForm._() : super._();

  factory _PokemonForm.fromJson(Map<String, dynamic> json) =
      _$_PokemonForm.fromJson;

  @override
  String get name;
  @override
  PokemonFormSprites? get sprites;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonFormCopyWith<_$_PokemonForm> get copyWith =>
      throw _privateConstructorUsedError;
}
