import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/custom_circle.dart';

class Circles extends StatelessWidget {
  const Circles({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 29.6.w,
          top: -70.36.h,
          child: Transform.rotate(
            angle: -16.95,
            child: Transform.rotate(
              angle: -16.95 * (pi / 180),
              child: CustomPaint(
                size: Size(107.w, 108.h),
                painter: CirclePainter(
                    color: const Color(0xff87D1A4).withOpacity(0.26)),
              ),
            ),
          ),
        ),
        Positioned(
          left: -53.71.w,
          top: -92.85.h,
          child: Transform.rotate(
            angle: -16.95 * (pi / 180),
            child: CustomPaint(
              size: Size(138.w, 138.h),
              painter:
                  CirclePainter(color: Color(0xff87D1A4).withOpacity(0.26)),
            ),
          ),
        ),
      ],
    );
  }
}
