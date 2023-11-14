import 'package:flutter/material.dart';
import 'package:swiggy/Responsive/responsive.dart';
import 'package:swiggy/Screen/laptop.dart';
import 'package:swiggy/Screen/mobile.dart';
import 'package:swiggy/Screen/tablet.dart';

void main() => runApp(const Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Responsive(
        mobile: MobileRes(),
        laptop: LaptopRes(),
        tablet: TabRes(),
      ),
    );
  }
}
