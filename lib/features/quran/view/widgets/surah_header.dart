import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/style/app_fonts.dart';
import '../../../../core/utils/vContainer.dart';

class SurahInfo extends StatelessWidget {
  const SurahInfo({super.key, required this.surahName});

  final String surahName;

  @override
  Widget build(BuildContext context) {
    return AContainer(
      padding: const EdgeInsets.all(10),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
              'assets/images/888-02.png', fit: BoxFit.cover),
          Text(surahName, style: AppFonts.quranTitle),
        ],
      ),
    );
  }
}
