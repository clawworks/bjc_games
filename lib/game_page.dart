import 'package:bjc_games/footer.dart';
import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  const GamePage({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: child,
          ),
          const SliverFillRemaining(
            hasScrollBody: false,
          ),
          const SliverToBoxAdapter(
            child: Footer(),
          ),
        ],
      ),
    );
  }
}
