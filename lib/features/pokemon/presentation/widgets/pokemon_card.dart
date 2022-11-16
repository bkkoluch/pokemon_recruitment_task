import 'package:flutter/material.dart';
import 'package:pokemon_recruitment_task/core/extensions/build_context_extensions.dart';
import 'package:pokemon_recruitment_task/features/common/presentation/widgets/core_text.dart';
import 'package:pokemon_recruitment_task/features/pokemon/presentation/cubits/pokemon_cubit.dart';
import 'package:pokemon_recruitment_task/features/pokemon/presentation/widgets/pokemon_content.dart';

class PokemonCard extends StatelessWidget {
  final PokemonCubit cubit;

  const PokemonCard({required this.cubit, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight / 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CoreText.header(
                  text: cubit.state.searchedPokemon!.name.toUpperCase(),
                ),
                FavoritesIcon(cubit: cubit),
              ],
            ),
          ),
          Flexible(
            child: PokemonContent(pokemon: cubit.state.searchedPokemon!),
          ),
        ],
      ),
    );
  }
}

class FavoritesIcon extends StatelessWidget {
  final PokemonCubit cubit;

  const FavoritesIcon({required this.cubit, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: isFavorite
          ? const Icon(Icons.favorite)
          : const Icon(Icons.favorite_outline_outlined),
    );
  }

  void onTap() {
    if (isFavorite) {
      cubit.removePokemonFromFavorites();
    } else {
      cubit.addPokemonToFavorites();
    }
  }

  bool get isFavorite =>
      cubit.state.favorites.contains(cubit.state.searchedPokemon);
}
