import 'package:flutter/material.dart';
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
    return MaterialApp(
      title: 'Pokemon Recruitment Task',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SizedBox.shrink(),
    );
  }
}
