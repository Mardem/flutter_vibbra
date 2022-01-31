import 'package:flutter/material.dart';

class AppInput extends StatelessWidget {
  final InputDecoration? decoration;

  const AppInput({required this.decoration});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: decoration,
    );
  }
}
