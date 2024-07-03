import 'package:alnur/config/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/style/app_fonts.dart';

class PrayLocation extends StatelessWidget {
  const PrayLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Now',
                  style: AppFonts.bodyText4.copyWith(color: AppColors.golden),
                ),
                SizedBox(height: 2.h),
                Text(
                  'Fajir',
                  style: AppFonts.headline2.copyWith(color: AppColors.golden),
                ),
                SizedBox(height: 5.h),
                Text(
                  'Islamic Society of North America',
                  style: AppFonts.bodyText2.copyWith(color: Colors.white60),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.location_pin),
                SizedBox(width: 5.w),
                Text(
                  'istanboul , turky',
                  style: AppFonts.bodyText4.copyWith(color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
