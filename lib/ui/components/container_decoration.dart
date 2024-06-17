import 'package:flutter/material.dart';

class ContainerDecoration extends StatelessWidget {
  final Widget child;
  const ContainerDecoration({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 100, left: 15, right: 15, bottom: 30),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(40),
              bottomLeft: Radius.circular(40))),
      child: child,
    );
  }
}
