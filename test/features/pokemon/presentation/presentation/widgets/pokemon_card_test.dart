import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pokemon_recruitment_task/features/common/presentation/widgets/core_text.dart';
import 'package:pokemon_recruitment_task/features/pokemon/presentation/cubits/pokemon_cubit.dart';
import 'package:pokemon_recruitment_task/features/pokemon/presentation/cubits/pokemon_state.dart';
import 'package:pokemon_recruitment_task/features/pokemon/presentation/widgets/pokemon_card.dart';
import 'package:pokemon_recruitment_task/features/pokemon/presentation/widgets/pokemon_content.dart';

import '../../../../../setup/mocks.dart';
import '../../../../../setup/test_data.dart';
import '../../../../../setup/test_setup.dart';

void main() {
  final PokemonCubit cubit = MockPokemonCubit();
  final PokemonState initialState = PokemonState.initial();

  testWidgets('should properly display PokemonCard', (widgetTester) async {
    whenListen(
      cubit,
      Stream<PokemonState>.value(
        initialState.copyWith(searchedPokemon: tPokemon),
      ),
      initialState: initialState.copyWith(searchedPokemon: tPokemon),
    );

    final Widget widget = prepareWidget(
      child: Scaffold(body: PokemonCard(cubit: cubit)),
    );

    await widgetTester.pumpWidget(widget);
    await widgetTester.pump();
    expect(find.byType(PokemonContent), findsOneWidget);
    expect(find.byType(CoreText), findsNWidgets(4));
    expect(find.byType(FavoritesIcon), findsOneWidget);
  });
}
