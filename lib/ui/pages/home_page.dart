import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(224, 224, 224, 1),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [Text("Este es el Home Page")],
        ),
      )),
    );
  }
}
