// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'move.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Move _$MoveFromJson(Map<String, dynamic> json) {
  return _Move.fromJson(json);
}

/// @nodoc
mixin _$Move {
  String get name => throw _privateConstructorUsedError;
  int? get accuracy => throw _privateConstructorUsedError;
  int? get power => throw _privateConstructorUsedError;
  @JsonKey(name: 'pp')
  int? get powerPoints => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoveCopyWith<Move> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveCopyWith<$Res> {
  factory $MoveCopyWith(Move value, $Res Function(Move) then) =
      _$MoveCopyWithImpl<$Res, Move>;
  @useResult
  $Res call(
      {String name,
      int? accuracy,
      int? power,
      @JsonKey(name: 'pp') int? powerPoints});
}

/// @nodoc
class _$MoveCopyWithImpl<$Res, $Val extends Move>
    implements $MoveCopyWith<$Res> {
  _$MoveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? accuracy = freezed,
    Object? power = freezed,
    Object? powerPoints = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      accuracy: freezed == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as int?,
      power: freezed == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as int?,
      powerPoints: freezed == powerPoints
          ? _value.powerPoints
          : powerPoints // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MoveCopyWith<$Res> implements $MoveCopyWith<$Res> {
  factory _$$_MoveCopyWith(_$_Move value, $Res Function(_$_Move) then) =
      __$$_MoveCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int? accuracy,
      int? power,
      @JsonKey(name: 'pp') int? powerPoints});
}

/// @nodoc
class __$$_MoveCopyWithImpl<$Res> extends _$MoveCopyWithImpl<$Res, _$_Move>
    implements _$$_MoveCopyWith<$Res> {
  __$$_MoveCopyWithImpl(_$_Move _value, $Res Function(_$_Move) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? accuracy = freezed,
    Object? power = freezed,
    Object? powerPoints = freezed,
  }) {
    return _then(_$_Move(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      accuracy: freezed == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as int?,
      power: freezed == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as int?,
      powerPoints: freezed == powerPoints
          ? _value.powerPoints
          : powerPoints // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Move extends _Move {
  const _$_Move(
      {required this.name,
      this.accuracy,
      this.power,
      @JsonKey(name: 'pp') this.powerPoints})
      : super._();

  factory _$_Move.fromJson(Map<String, dynamic> json) => _$$_MoveFromJson(json);

  @override
  final String name;
  @override
  final int? accuracy;
  @override
  final int? power;
  @override
  @JsonKey(name: 'pp')
  final int? powerPoints;

  @override
  String toString() {
    return 'Move(name: $name, accuracy: $accuracy, power: $power, powerPoints: $powerPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Move &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.power, power) || other.power == power) &&
            (identical(other.powerPoints, powerPoints) ||
                other.powerPoints == powerPoints));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, accuracy, power, powerPoints);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MoveCopyWith<_$_Move> get copyWith =>
      __$$_MoveCopyWithImpl<_$_Move>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoveToJson(
      this,
    );
  }
}

abstract class _Move extends Move {
  const factory _Move(
      {required final String name,
      final int? accuracy,
      final int? power,
      @JsonKey(name: 'pp') final int? powerPoints}) = _$_Move;
  const _Move._() : super._();

  factory _Move.fromJson(Map<String, dynamic> json) = _$_Move.fromJson;

  @override
  String get name;
  @override
  int? get accuracy;
  @override
  int? get power;
  @override
  @JsonKey(name: 'pp')
  int? get powerPoints;
  @override
  @JsonKey(ignore: true)
  _$$_MoveCopyWith<_$_Move> get copyWith => throw _privateConstructorUsedError;
}
