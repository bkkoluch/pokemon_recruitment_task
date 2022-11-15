import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_recruitment_task/core/strings/strings.dart';
import 'package:pokemon_recruitment_task/features/common/presentation/widgets/core_text.dart';
import 'package:pokemon_recruitment_task/features/pokemon/domain/models/pokemon/pokemon.dart';
import 'package:pokemon_recruitment_task/style/core_dimensions.dart';
import 'package:pokemon_recruitment_task/style/style_tokens.dart';

typedef OnReorder = Function(int oldIndex, int newIndex);

class PokemonFavoritesTab extends StatelessWidget {
  final List<Pokemon> favorites;
  final OnReorder onReorder;

  const PokemonFavoritesTab({
    required this.favorites,
    required this.onReorder,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: CoreDimensions.paddingL,
      ),
      child: favorites.isNotEmpty
          ? ReorderableListView.builder(
              onReorder: onReorder,
              itemCount: favorites.length,
              proxyDecorator: (Widget child, _, __) => ColoredBox(
                color: StyleTokens.mainBlueTenPercent,
                child: child,
              ),
              itemBuilder: (_, int index) => _FavoriteListTile(
                key: ValueKey(index),
                pokemon: favorites[index],
              ),
            )
          : CoreText.header(text: pokemonFavouritesEmptyListText),
    );
  }
}

class _FavoriteListTile extends StatelessWidget {
  final Pokemon pokemon;

  const _FavoriteListTile({required this.pokemon, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: StyleTokens.mainBlack),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CachedNetworkImage(
            imageUrl: pokemon.sprites.frontDefault,
            height: 60,
          ),
          Expanded(child: CoreText.header(text: pokemon.name.toUpperCase())),
          const Icon(Icons.menu),
          const SizedBox(width: CoreDimensions.paddingM),
        ],
      ),
    );
  }
}
