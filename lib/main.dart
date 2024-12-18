import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'home_page.dart';

void main() {
  runApp(
    const ProviderScope(
      child: BjcGamesApp(),
    ),
  );
}

class BjcGamesApp extends StatelessWidget {
  const BjcGamesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BJC Games',
      theme: ThemeData(
        fontFamily: 'Grandstander',
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueGrey,
          dynamicSchemeVariant: DynamicSchemeVariant.fidelity,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'B.J.C. Games'),
    );
  }
}
