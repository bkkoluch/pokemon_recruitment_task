import 'package:flutter/material.dart';
import 'package:pokemon_recruitment_task/features/pokemon/presentation/pages/pokemon_home_page.dart';
import 'package:pokemon_recruitment_task/services/injection_container/injection_container.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjector();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pokemon Recruitment Task',
      home: PokemonHomePage(),
    );
  }
}
