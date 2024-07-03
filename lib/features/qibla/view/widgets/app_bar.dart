import 'package:alnur/config/style/app_fonts.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_bar.dart';

class QiblaAppBar extends StatelessWidget {
  const QiblaAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.white)),
      title: Text(
        'Qibla Direction',
        style: AppFonts.bodyText.copyWith(color: Colors.white),
      ),
    );
  }
}
