import 'package:alnur/config/style/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/vContainer.dart';

class PrayTiming extends StatelessWidget {
  const PrayTiming(
      {super.key,
      required this.dhuhr,
      required this.asr,
      required this.maghrib,
      required this.isha});

  final String dhuhr;
  final String asr;
  final String maghrib;
  final String isha;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        customItem('Dhuhr', dhuhr),
        customItem('Asr', asr),
        customItem('Maghrib', maghrib),
        customItem('Isha', isha),
      ],
    );
  }

  Widget customItem(String salaah, String time) => AContainer(
        borderRadius: BorderRadius.circular(8),
        width: 80.w,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        margin: const EdgeInsets.symmetric(vertical: 5),
        color: const Color(0xffffd18b),
        child: Column(
          children: [
            Text(
              salaah,
              style: AppFonts.bodyText2.copyWith(color: Colors.black54),
            ),
            Text(time,
                style: AppFonts.bodyText2.copyWith(color: Colors.black54)),
          ],
        ),
      );
}
