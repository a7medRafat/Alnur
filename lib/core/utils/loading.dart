import 'package:flutter/material.dart';

import '../../config/colors/app_colors.dart';

class Loading extends StatelessWidget {
  const Loading({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: color ?? AppColors.primaryColor,
      strokeWidth: 3,
    );
  }
}
