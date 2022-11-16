import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:pokemon_recruitment_task/core/strings/strings.dart';
import 'package:pokemon_recruitment_task/features/common/presentation/widgets/core_text.dart';
import 'package:pokemon_recruitment_task/features/pokemon/domain/models/pokemon/pokemon.dart';
import 'package:pokemon_recruitment_task/style/core_dimensions.dart';

class PokemonContent extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonContent({required this.pokemon, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: CachedNetworkImage(
            imageUrl: pokemon.sprites.frontDefault,
            fit: BoxFit.fill,
            height: 150,
          ),
        ),
        const SizedBox(height: CoreDimensions.paddingS),
        CoreText.paragraph(
          text: '$pokemonHeightText ${pokemon.height.toString()}',
        ),
        CoreText.paragraph(
          text: '$pokemonWeightText ${pokemon.weight.toString()}',
        ),
        CoreText.header(text: pokemonMovesListText),
        Flexible(
          child: ListView.builder(
            itemCount: pokemon.moves.length,
            itemBuilder: (_, index) {
              return CoreText.paragraph(text: pokemon.moves[index].move.name);
            },
          ),
        ),
      ],
    );
  }
}
