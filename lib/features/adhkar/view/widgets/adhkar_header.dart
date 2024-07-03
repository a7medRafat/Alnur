import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/style/app_fonts.dart';
import '../../../../core/utils/vContainer.dart';

class AdhkarHeader extends StatelessWidget {
  const AdhkarHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: AContainer(
        alignment: Alignment.bottomLeft,
        padding: const EdgeInsets.all(20),
        height: 160.h,
        color: const Color(0xff00b4b1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                textAlign: TextAlign.end,
                'when waking up in the morning',
                style: AppFonts.bodyText1.copyWith(color: Colors.white)),
            SizedBox(height: 5.h),
            AContainer(
              width: 80.w,
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              child: const Text('2/34'),
            )
          ],
        ),
      ),
    );
  }
}
