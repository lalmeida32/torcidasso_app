import 'package:flutter/material.dart';
import 'package:torcidasso_app/app_game.dart';

class GamesPage extends StatelessWidget {
  const GamesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Game(name: 'Brasil x Catar'),
        SizedBox(height: 10),
        Game(name: 'Botafogo x Fluminense'),
        SizedBox(height: 10),
        Game(name: 'Corinthians x Palmeiras'),
      ],
    );
  }
}
