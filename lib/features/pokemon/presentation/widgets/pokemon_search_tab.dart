import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_recruitment_task/core/strings/strings.dart';
import 'package:pokemon_recruitment_task/features/common/presentation/widgets/core_text.dart';
import 'package:pokemon_recruitment_task/features/pokemon/presentation/cubits/pokemon_cubit.dart';
import 'package:pokemon_recruitment_task/features/pokemon/presentation/cubits/pokemon_state.dart';
import 'package:pokemon_recruitment_task/features/pokemon/presentation/widgets/pokemon_card.dart';
import 'package:pokemon_recruitment_task/style/core_dimensions.dart';
import 'package:pokemon_recruitment_task/style/style_tokens.dart';

class PokemonSearchTab extends StatelessWidget {
  final TextEditingController textEditingController;
  final PokemonCubit cubit;

  const PokemonSearchTab({
    required this.textEditingController,
    required this.cubit,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: CoreDimensions.paddingL,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _TextFieldAndButtonSection(
              cubit: cubit,
              textEditingController: textEditingController,
            ),
            const SizedBox(height: CoreDimensions.paddingL),
            _PokemonCardSection(cubit: cubit),
          ],
        ),
      ),
    );
  }
}

class _TextFieldAndButtonSection extends StatelessWidget {
  final PokemonCubit cubit;
  final TextEditingController textEditingController;

  const _TextFieldAndButtonSection({
    required this.cubit,
    required this.textEditingController,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: StyleTokens.mainWhite),
          ),
          padding: const EdgeInsets.all(CoreDimensions.paddingL),
          child: TextFormField(
            controller: textEditingController,
            onChanged: cubit.updateSearchedName,
            style: commonFormFieldTextStyle,
            decoration: InputDecoration.collapsed(
              hintText: searchPokemonSearchTextFieldHintText,
              fillColor: StyleTokens.mainWhite,
              hintStyle: commonFormFieldTextStyle,
            ),
            cursorColor: StyleTokens.mainWhite,
          ),
        ),
        const SizedBox(height: CoreDimensions.paddingS),
        BlocBuilder<PokemonCubit, PokemonState>(
          bloc: cubit,
          buildWhen: (PokemonState previous, PokemonState current) =>
              previous.searchedPokemonName != current.searchedPokemonName,
          builder: (_, PokemonState state) {
            return ElevatedButton(
              onPressed: state.searchedPokemonName.isNotEmpty
                  ? cubit.searchForPokemonByName
                  : null,
              child: CoreText.subtitle(text: searchPokemonSearchButtonText),
            );
          },
        )
      ],
    );
  }

  TextStyle get commonFormFieldTextStyle =>
      const TextStyle(color: StyleTokens.mainWhite);
}

class _PokemonCardSection extends StatelessWidget {
  final PokemonCubit cubit;

  const _PokemonCardSection({required this.cubit, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonCubit, PokemonState>(
      bloc: cubit,
      builder: (_, PokemonState state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              color: StyleTokens.mainBlue,
            ),
          );
        } else if (state.isError) {
          return CoreText.paragraph(text: searchPokemonPageErrorText);
        } else if (state.isFullyLoaded) {
          return PokemonCard(cubit: cubit);
        }

        return const SizedBox.shrink();
      },
    );
  }
}
