import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget laptop;
  const Responsive(
      {required this.mobile, required this.tablet, required this.laptop});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return mobile;
        } else if (constraints.maxWidth < 1100) {
          return tablet;
        } else {
          return laptop;
        }
      },
    );
  }
}
