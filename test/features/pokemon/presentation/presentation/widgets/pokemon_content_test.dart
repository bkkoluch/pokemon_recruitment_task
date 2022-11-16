import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pokemon_recruitment_task/features/common/presentation/widgets/core_text.dart';
import 'package:pokemon_recruitment_task/features/pokemon/presentation/widgets/pokemon_content.dart';

import '../../../../../setup/test_data.dart';
import '../../../../../setup/test_setup.dart';

void main() {
  testWidgets(
    'should properly display PokemonContent',
    (widgetTester) async {
      final Widget widget =
          prepareWidget(child: const PokemonContent(pokemon: tPokemon));

      await widgetTester.pumpWidget(widget);

      expect(find.byType(CoreText), findsNWidgets(3));
      expect(find.byType(ListView), findsOneWidget);
      expect(find.byType(CachedNetworkImage), findsOneWidget);
    },
  );
}
