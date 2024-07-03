import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/style/app_fonts.dart';
import '../../../../core/utils/vContainer.dart';

class PlayRead extends StatelessWidget {
  const PlayRead({super.key, required this.fun});
  final Function()fun;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AContainer(
          function: fun,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.green, // Border color
            width: 1, // Border width
          ),
          child: Row(
            children: [
              const Icon(CupertinoIcons.play_arrow_solid,
                  color: Colors.green, size: 15),
              const SizedBox(width: 3),
              Text('Play', style: AppFonts.bodyText3),
            ],
          ),
        ),
        SizedBox(width: 10.w),
        AContainer(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.green, // Border color
            width: 1, // Border width
          ),
          child: Row(
            children: [
              const Icon(CupertinoIcons.book_solid,
                  color: Colors.green, size: 15),
              const SizedBox(width: 3),
              Text('Read', style: AppFonts.bodyText3),
            ],
          ),
        ),
      ],
    );
  }
}
