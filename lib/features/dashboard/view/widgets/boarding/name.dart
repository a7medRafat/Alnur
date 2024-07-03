import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/style/app_fonts.dart';

class Name extends StatelessWidget {
  const Name({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('ALNUR', style: AppFonts.headline1),
        SizedBox(height: 15.h),
        Text('Learn Quran and\nRecite everyday',
            style: AppFonts.headline2, textAlign: TextAlign.center),
      ],
    );
  }
}
