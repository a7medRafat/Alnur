import 'package:alnur/core/shared_preferances/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/style/app_fonts.dart';

class CurrentLocation extends StatelessWidget {
  const CurrentLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.location_pin, size: 20.sp),
          SizedBox(width: 5.w),
          Row(
            children: [
              Text(
                '${CacheHelper.getData(key: 'country')} - ',
                style: AppFonts.bodyText1.copyWith(color: Colors.white),
              ),
              Text(
                CacheHelper.getData(key: 'city'),
                style: AppFonts.bodyText1.copyWith(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
