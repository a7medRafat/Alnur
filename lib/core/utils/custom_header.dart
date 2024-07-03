import 'package:alnur/core/utils/vContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/colors/app_colors.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key, this.basmallah, this.title});

  final Widget? basmallah;
  final Widget? title;

  @override
  Widget build(BuildContext context) {
    return AContainer(
      gradient: AppColors.linear,
      height: 146.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Opacity(
              opacity: 0.1,
              child:
                  Image.asset('assets/images/tQuran.png', fit: BoxFit.cover)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              title!,
              SizedBox(height: 5.h),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: const Divider(
                  color: Colors.white38,
                  thickness: 0.5,
                ),
              ),
              basmallah ?? const SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}
