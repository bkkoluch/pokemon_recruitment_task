import 'package:freezed_annotation/freezed_annotation.dart';

part 'move.freezed.dart';
part 'move.g.dart';

@freezed
class Move with _$Move {
  const Move._();

  const factory Move({
    required String name,
    int? accuracy,
    int? power,
    @JsonKey(name: 'pp') int? powerPoints,
  }) = _Move;

  factory Move.fromJson(Map<String, dynamic> json) => _$MoveFromJson(json);
}
