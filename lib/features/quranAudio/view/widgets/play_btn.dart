import 'package:alnur/config/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayBtn extends StatelessWidget {
  const PlayBtn({super.key, required this.function, required this.isPlaying});

  final Function() function;
  final bool isPlaying;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25.sp,
      backgroundColor: AppColors.headLine1,
      child: IconButton(
          onPressed: function,
          icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow_rounded,
              color: Colors.white,size: 25.sp)),
    );
  }
}
