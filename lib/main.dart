import 'package:flutter/material.dart';
import 'package:torcidasso_app/app_draggable.dart';
import 'package:torcidasso_app/app_map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              SizedBox.expand(
                child: AppMap(),
              ),
              SizedBox.expand(
                child: AppDraggable(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
