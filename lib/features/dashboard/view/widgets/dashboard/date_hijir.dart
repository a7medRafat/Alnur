import 'package:alnur/config/colors/app_colors.dart';
import 'package:alnur/config/style/app_fonts.dart';
import 'package:alnur/core/utils/my_Divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/vContainer.dart';

class DateHijir extends StatelessWidget {
  const DateHijir(
      {super.key,
      required this.month,
      required this.day,
      required this.year,
      required this.weekDay});

  final String month;
  final String day;
  final String year;
  final String weekDay;

  @override
  Widget build(BuildContext context) {
    return AContainer(
      margin: const EdgeInsets.only(bottom: 5),
      color: const Color(0xffa3c9be),
      padding: const EdgeInsets.all(10),
      borderRadius: BorderRadius.circular(20),
      child: IntrinsicHeight(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.calendar_month_sharp, color: AppColors.darkGray),
            SizedBox(width: 8.w),
            Row(
              children: [
                Text(day,
                    style:
                        AppFonts.bodyText4.copyWith(color: AppColors.darkGray)),
                SizedBox(width: 5.w),
                Text(month,
                    style:
                        AppFonts.bodyText4.copyWith(color: AppColors.darkGray)),
                SizedBox(width: 5.w),
                Text(year,
                    style:
                        AppFonts.bodyText4.copyWith(color: AppColors.darkGray)),
              ],
            ),
            const MyDivider(thickness: 2),
            Text(weekDay,
                style: AppFonts.bodyText4.copyWith(color: AppColors.darkGray)),
          ],
        ),
      ),
    );
  }
}
