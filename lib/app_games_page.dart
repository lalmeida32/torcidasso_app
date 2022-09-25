import 'package:flutter/material.dart';
import 'package:torcidasso_app/app_game.dart';

class GamesPage extends StatelessWidget {
  final void Function(bool) setOpen;

  const GamesPage(this.setOpen, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Game(setOpen, name: 'Brasil x Catar'),
        const SizedBox(height: 10),
        Game(setOpen, name: 'Botafogo x Fluminense'),
        const SizedBox(height: 10),
        Game(setOpen, name: 'Corinthians x Palmeiras'),
      ],
    );
  }
}
