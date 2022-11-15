// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonForm _$$_PokemonFormFromJson(Map<String, dynamic> json) =>
    _$_PokemonForm(
      name: json['name'] as String,
      sprites: json['sprites'] == null
          ? null
          : PokemonFormSprites.fromJson(
              json['sprites'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonFormToJson(_$_PokemonForm instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sprites': instance.sprites,
    };
