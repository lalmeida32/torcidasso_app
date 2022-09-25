import 'package:flutter/material.dart';

class Game extends StatelessWidget {
  final String name;
  final void Function(bool) setOpen;

  const Game(this.setOpen, {required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF05668d),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        width: double.infinity,
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Stack(
          children: [
            Center(
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  name,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Inter',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const Positioned(
              right: -5,
              child: SizedBox(
                height: 60,
                child: Center(
                  child: Icon(
                    Icons.arrow_right_alt_rounded,
                    color: Color(0xFFdce8ed),
                    size: 40,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        setOpen(true);
      },
    );
  }
}
