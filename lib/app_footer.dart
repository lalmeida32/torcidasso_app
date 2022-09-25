import 'package:flutter/material.dart';
import 'package:torcidasso_app/app_games_page.dart';

class AppFooter extends StatefulWidget {
  final ScrollController scrollController;

  const AppFooter({required this.scrollController, super.key});

  @override
  State<AppFooter> createState() => _AppFooterState();
}

class _AppFooterState extends State<AppFooter> {
  bool _opened = false;

  @override
  Widget build(BuildContext context) {
    // return ListView.builder(
    //   controller: widget.scrollController,
    //   itemCount: 25,
    //   itemBuilder: (BuildContext context, int index) {
    //     return ListTile(title: Text('Item $index'));
    //   },
    // );
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color(0xE0ffffff),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
          ),
          width: MediaQuery.of(context).size.width,
          constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height * 0.75),
          child: SingleChildScrollView(
            controller: widget.scrollController,
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
            child: const GamesPage(),
          ),
        ),
        Positioned(
          top: 20,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF555555),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                width: 50,
                height: 5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
