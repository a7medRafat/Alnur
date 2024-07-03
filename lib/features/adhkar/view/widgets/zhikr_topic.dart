import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/style/app_fonts.dart';

class ZhikrTopic extends StatelessWidget {
  const ZhikrTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Text(
              textAlign: TextAlign.center,
              'الْحَمْدُ لِلَّهِ وَحْدَهُ، وَالصَّلاَةُ وَالسَّلاَمُ عَلَى مَنْ لاَ نَبِيَّ بَعْدَه',
              style: AppFonts.headline2
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 30.sp),
            ),
          )
        ],
      ),
    );
  }
}
