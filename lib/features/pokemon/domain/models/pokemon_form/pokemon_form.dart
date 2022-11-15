import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_recruitment_task/features/pokemon/domain/models/pokemon_form/pokemon_form_sprites.dart';

part 'pokemon_form.freezed.dart';
part 'pokemon_form.g.dart';

@freezed
class PokemonForm with _$PokemonForm {
  const PokemonForm._();

  const factory PokemonForm({
    required String name,
    PokemonFormSprites? sprites,
  }) = _PokemonForm;

  factory PokemonForm.fromJson(Map<String, dynamic> json) =>
      _$PokemonFormFromJson(json);
}
