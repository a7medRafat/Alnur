import 'package:flutter/material.dart';
import '../../config/colors/app_colors.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({super.key, required this.thickness});

  final double thickness;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: VerticalDivider(
        color: Colors.green,
        thickness: thickness,
      ),
    );
  }
}
