import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/style/app_fonts.dart';

class ZhikrTranslation extends StatelessWidget {
  const ZhikrTranslation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            textAlign: TextAlign.start,
            'All praise is due to Allah alone, and peace and blessings be upon him after whom there is no other Prophet.',
            style: AppFonts.bodyText4.copyWith(
              fontSize: 14.sp
            )
          ),
        )
      ],
    );
  }
}
