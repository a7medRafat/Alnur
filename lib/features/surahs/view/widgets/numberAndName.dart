import 'package:alnur/config/colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/style/app_fonts.dart';
import '../../../../core/utils/my_Divider.dart';

class NumberAndName extends StatelessWidget {
  const NumberAndName(
      {super.key,
      required this.number,
      required this.name,
      required this.englishName});

  final int number;
  final String name;
  final String englishName;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          SizedBox(width: 25.w, child: Center(child: Text(number.toString()))),
          const MyDivider(thickness: 2),
          SizedBox(width: 5.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(englishName, style: AppFonts.bodyText4),
              Text(name,
                  style: AppFonts.bodyText4
                      .copyWith(fontSize: 12.sp, color: AppColors.caption)),
            ],
          ),
        ],
      ),
    );
  }
}
