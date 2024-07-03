import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/colors/app_colors.dart';
import '../../../../../core/utils/vContainer.dart';

class Mushaf extends StatelessWidget {
  const Mushaf({super.key});

  @override
  Widget build(BuildContext context) {
    return AContainer(
      margin: const EdgeInsets.all(10),
      width: 341.w,
      height: 418.h,
      borderRadius: BorderRadius.circular(18),
      color: AppColors.container,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 306.w,
            top: 173.h,
            child: Image.asset('assets/images/star.png',
                width: 17.w, height: 19.h),
          ),
          Positioned(
            left: 39.w,
            top: 362.h,
            child: Image.asset('assets/images/star.png',
                width: 30.w, height: 32.h),
          ),
          Positioned(
            left: 20.w,
            top: 100.h,
            child:
                Image.asset('assets/images/star.png', width: 7.w, height: 8.h),
          ),
          Positioned(
            left: 315.w,
            top: 321.h,
            child:
                Image.asset('assets/images/star.png', width: 7.w, height: 8.h),
          ),
          Center(
            child: Image.asset('assets/images/moshaf.png'),
          ),
        ],
      ),
    );
  }
}
