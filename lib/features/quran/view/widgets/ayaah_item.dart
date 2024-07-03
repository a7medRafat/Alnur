import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/style/app_fonts.dart';

class AyahsItem extends StatelessWidget {
  const AyahsItem({super.key, required this.arAyah, required this.enAyah});

  final String arAyah;
  final String enAyah;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Text(
                    textAlign: TextAlign.end,
                    arAyah,
                    style: AppFonts.quranText),
              ),
            ],
          ),
          SizedBox(height: 5.h),
          Row(
            children: [
              Expanded(
                child: Text(
                    textAlign: TextAlign.start,
                    enAyah,
                    style: AppFonts.quranEnText),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
