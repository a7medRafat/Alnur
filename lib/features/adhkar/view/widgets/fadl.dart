import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/colors/app_colors.dart';
import '../../../../config/style/app_fonts.dart';

class Fadl extends StatelessWidget {
  const Fadl({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.book, color: AppColors.caption, size: 15),
              SizedBox(width: 8.w),
              Text(
                'Fadel',
                style: AppFonts.bodyText3.copyWith(color: AppColors.caption),
              )
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Text(
                  textAlign: TextAlign.start,
                  'The recommendation to begin supplication with praise to Allah the Exalted and extolling Him, followed by prayers upon the Messenger of Allah ﷺ.',
                  style: AppFonts.bodyText4.copyWith(color: AppColors.hint),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
