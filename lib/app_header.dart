import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Color(0xFF05668d),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      height: 50,
      child: Row(
        children: const [
          SizedBox(width: 15),
          Expanded(
            child: SizedBox(
              height: 30,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 7,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0, color: Color(0xFF000000)),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0, color: Color(0xFF000000)),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 0, color: Color(0xFF000000)),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 15),
          Icon(Icons.search, size: 30, color: Color(0xFFdce8ed)),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
