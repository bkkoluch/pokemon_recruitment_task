import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pokemon_recruitment_task/core/strings/strings.dart';
import 'package:pokemon_recruitment_task/features/pokemon/presentation/widgets/pokemon_favorites_tab.dart';

import '../../../../../setup/test_data.dart';
import '../../../../../setup/test_setup.dart';

void main() {
  testWidgets(
    'should properly display PokemonFavoritesTab for not empty favorites',
    (widgetTester) async {
      final Widget widget = prepareWidget(
        child: PokemonFavoritesTab(
          favorites: [tPokemon],
          onReorder: (_, __) {},
        ),
      );

      await widgetTester.pumpWidget(widget);

      expect(find.text(pokemonFavouritesEmptyListText), findsNothing);
      expect(find.byType(ReorderableListView), findsOneWidget);
      expect(find.text(tPokemonName.toUpperCase()), findsOneWidget);
    },
  );

  testWidgets(
    'should properly display PokemonFavoritesTab for empty favorites',
    (widgetTester) async {
      final Widget widget = prepareWidget(
        child: PokemonFavoritesTab(
          favorites: [],
          onReorder: (_, __) {},
        ),
      );

      await widgetTester.pumpWidget(widget);

      expect(find.text(pokemonFavouritesEmptyListText), findsOneWidget);
      expect(find.byType(ReorderableListView), findsNothing);
      expect(find.text(tPokemonName), findsNothing);
    },
  );
}
