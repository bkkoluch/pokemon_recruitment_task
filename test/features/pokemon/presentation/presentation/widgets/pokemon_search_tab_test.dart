import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pokemon_recruitment_task/core/strings/strings.dart';
import 'package:pokemon_recruitment_task/features/pokemon/presentation/cubits/pokemon_cubit.dart';
import 'package:pokemon_recruitment_task/features/pokemon/presentation/cubits/pokemon_state.dart';
import 'package:pokemon_recruitment_task/features/pokemon/presentation/widgets/pokemon_card.dart';
import 'package:pokemon_recruitment_task/features/pokemon/presentation/widgets/pokemon_search_tab.dart';

import '../../../../../setup/mocks.dart';
import '../../../../../setup/test_data.dart';
import '../../../../../setup/test_setup.dart';

void main() {
  final PokemonCubit cubit = MockPokemonCubit();
  final PokemonState initialState = PokemonState.initial();
  final PokemonState errorState =
      initialState.copyWith(status: PokemonStateStatus.error);
  final PokemonState fullyLoadedState = initialState.copyWith(
    searchedPokemon: tPokemon,
    status: PokemonStateStatus.loaded,
  );

  testWidgets(
    'should properly display PokemonSearchTab for fully loaded state',
    (widgetTester) async {
      whenListen(
        cubit,
        Stream<PokemonState>.value(fullyLoadedState),
        initialState: fullyLoadedState,
      );

      final Widget widget = prepareWidget(
        child: PokemonSearchTab(
          textEditingController: TextEditingController(),
          cubit: cubit,
        ),
      );

      await widgetTester.pumpWidget(widget);

      expect(find.byType(TextFormField), findsOneWidget);
      expect(find.byType(ElevatedButton), findsOneWidget);
      expect(find.text(searchPokemonSearchButtonText), findsOneWidget);
      expect(find.text(searchPokemonPageErrorText), findsNothing);
      expect(find.byType(PokemonCard), findsOneWidget);
    },
  );

  testWidgets(
    'should properly display PokemonSearchTab for not fully loaded state',
    (widgetTester) async {
      whenListen(
        cubit,
        Stream<PokemonState>.value(initialState),
        initialState: initialState,
      );

      final Widget widget = prepareWidget(
        child: PokemonSearchTab(
          textEditingController: TextEditingController(),
          cubit: cubit,
        ),
      );

      await widgetTester.pumpWidget(widget);

      expect(find.byType(TextFormField), findsOneWidget);
      expect(find.byType(ElevatedButton), findsOneWidget);
      expect(find.text(searchPokemonSearchButtonText), findsOneWidget);
      expect(find.text(searchPokemonPageErrorText), findsNothing);
      expect(find.byType(PokemonCard), findsNothing);
    },
  );

  testWidgets(
    'should properly display PokemonSearchTab for error state',
    (widgetTester) async {
      whenListen(
        cubit,
        Stream<PokemonState>.value(errorState),
        initialState: errorState,
      );

      final Widget widget = prepareWidget(
        child: PokemonSearchTab(
          textEditingController: TextEditingController(),
          cubit: cubit,
        ),
      );

      await widgetTester.pumpWidget(widget);

      expect(find.byType(TextFormField), findsOneWidget);
      expect(find.byType(ElevatedButton), findsOneWidget);
      expect(find.text(searchPokemonSearchButtonText), findsOneWidget);
      expect(find.text(searchPokemonPageErrorText), findsOneWidget);
      expect(find.byType(PokemonCard), findsNothing);
    },
  );
}
