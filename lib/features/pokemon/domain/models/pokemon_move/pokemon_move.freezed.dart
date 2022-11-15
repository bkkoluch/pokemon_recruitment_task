// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_move.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonMove _$PokemonMoveFromJson(Map<String, dynamic> json) {
  return _PokemonMove.fromJson(json);
}

/// @nodoc
mixin _$PokemonMove {
  Move get move => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonMoveCopyWith<PokemonMove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonMoveCopyWith<$Res> {
  factory $PokemonMoveCopyWith(
          PokemonMove value, $Res Function(PokemonMove) then) =
      _$PokemonMoveCopyWithImpl<$Res, PokemonMove>;
  @useResult
  $Res call({Move move});

  $MoveCopyWith<$Res> get move;
}

/// @nodoc
class _$PokemonMoveCopyWithImpl<$Res, $Val extends PokemonMove>
    implements $PokemonMoveCopyWith<$Res> {
  _$PokemonMoveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? move = null,
  }) {
    return _then(_value.copyWith(
      move: null == move
          ? _value.move
          : move // ignore: cast_nullable_to_non_nullable
              as Move,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MoveCopyWith<$Res> get move {
    return $MoveCopyWith<$Res>(_value.move, (value) {
      return _then(_value.copyWith(move: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonMoveCopyWith<$Res>
    implements $PokemonMoveCopyWith<$Res> {
  factory _$$_PokemonMoveCopyWith(
          _$_PokemonMove value, $Res Function(_$_PokemonMove) then) =
      __$$_PokemonMoveCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Move move});

  @override
  $MoveCopyWith<$Res> get move;
}

/// @nodoc
class __$$_PokemonMoveCopyWithImpl<$Res>
    extends _$PokemonMoveCopyWithImpl<$Res, _$_PokemonMove>
    implements _$$_PokemonMoveCopyWith<$Res> {
  __$$_PokemonMoveCopyWithImpl(
      _$_PokemonMove _value, $Res Function(_$_PokemonMove) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? move = null,
  }) {
    return _then(_$_PokemonMove(
      move: null == move
          ? _value.move
          : move // ignore: cast_nullable_to_non_nullable
              as Move,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonMove extends _PokemonMove {
  const _$_PokemonMove({required this.move}) : super._();

  factory _$_PokemonMove.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonMoveFromJson(json);

  @override
  final Move move;

  @override
  String toString() {
    return 'PokemonMove(move: $move)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonMove &&
            (identical(other.move, move) || other.move == move));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, move);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonMoveCopyWith<_$_PokemonMove> get copyWith =>
      __$$_PokemonMoveCopyWithImpl<_$_PokemonMove>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonMoveToJson(
      this,
    );
  }
}

abstract class _PokemonMove extends PokemonMove {
  const factory _PokemonMove({required final Move move}) = _$_PokemonMove;
  const _PokemonMove._() : super._();

  factory _PokemonMove.fromJson(Map<String, dynamic> json) =
      _$_PokemonMove.fromJson;

  @override
  Move get move;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonMoveCopyWith<_$_PokemonMove> get copyWith =>
      throw _privateConstructorUsedError;
}
