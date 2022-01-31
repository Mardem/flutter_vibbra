import 'package:flutter/material.dart';
import 'package:vibbra_notifications/design_system/values/colors.dart';

class MainLayout extends StatelessWidget {
  final Widget? body;

  const MainLayout({
    this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColors.backgroundColor,
      body: body,
    );
  }
}
