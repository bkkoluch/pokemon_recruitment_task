import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_recruitment_task/core/extensions/build_context_extensions.dart';
import 'package:pokemon_recruitment_task/core/strings/strings.dart';
import 'package:pokemon_recruitment_task/features/pokemon/presentation/cubits/pokemon_cubit.dart';
import 'package:pokemon_recruitment_task/features/pokemon/presentation/cubits/pokemon_state.dart';
import 'package:pokemon_recruitment_task/features/pokemon/presentation/widgets/pokemon_favorites_tab.dart';
import 'package:pokemon_recruitment_task/features/pokemon/presentation/widgets/pokemon_search_tab.dart';
import 'package:pokemon_recruitment_task/services/injection_container/injection_container.dart';
import 'package:pokemon_recruitment_task/style/core_dimensions.dart';
import 'package:pokemon_recruitment_task/style/style_tokens.dart';

class PokemonHomePage extends StatefulWidget {
  const PokemonHomePage({Key? key}) : super(key: key);

  @override
  State<PokemonHomePage> createState() => _SearchPokemonPageState();
}

class _SearchPokemonPageState extends State<PokemonHomePage> {
  final PokemonCubit _cubit = getIt<PokemonCubit>();
  final TextEditingController _searchPokemonByTextNameEditingController =
      TextEditingController();

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StyleTokens.mainRed,
      body: _PokemonHomePageContent(
        textEditingController: _searchPokemonByTextNameEditingController,
        cubit: _cubit,
      ),
    );
  }
}

class _PokemonHomePageContent extends StatelessWidget {
  final TextEditingController textEditingController;
  final PokemonCubit cubit;

  const _PokemonHomePageContent({
    required this.textEditingController,
    required this.cubit,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            SizedBox(height: context.screenHeight * 0.05),
            const TabBar(
              indicatorColor: StyleTokens.mainWhite,
              tabs: [
                Tab(text: pokemonHomePageSearchTabText),
                Tab(text: pokemonHomePageFavoritesTabText),
              ],
            ),
            const SizedBox(height: CoreDimensions.paddingM),
            Flexible(
              child: TabBarView(
                children: [
                  PokemonSearchTab(
                    textEditingController: textEditingController,
                    cubit: cubit,
                  ),
                  BlocBuilder<PokemonCubit, PokemonState>(
                    buildWhen: (PokemonState previous, PokemonState current) =>
                        previous.favorites != current.favorites,
                    bloc: cubit,
                    builder: (context, state) {
                      return PokemonFavoritesTab(
                        favorites: cubit.state.favorites,
                        onReorder: cubit.reorderFavorites,
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
