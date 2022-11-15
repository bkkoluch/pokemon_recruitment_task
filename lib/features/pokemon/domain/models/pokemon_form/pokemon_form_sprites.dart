import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_form_sprites.freezed.dart';
part 'pokemon_form_sprites.g.dart';

@freezed
class PokemonFormSprites with _$PokemonFormSprites {
  const PokemonFormSprites._();

  const factory PokemonFormSprites({
    @JsonKey(name: 'front_default') required String frontDefault,
    @JsonKey(name: 'front_shiny') required String frontShiny,
    @JsonKey(name: 'back_default') required String backDefault,
    @JsonKey(name: 'back_shiny') required String backShiny,
  }) = _PokemonFormSprites;

  factory PokemonFormSprites.fromJson(Map<String, dynamic> json) =>
      _$PokemonFormSpritesFromJson(json);
}
