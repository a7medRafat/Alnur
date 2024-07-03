import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/colors/app_colors.dart';
import '../../../../config/style/app_fonts.dart';
import '../../../../core/utils/app_button.dart';
import '../../../../core/utils/vContainer.dart';

class SurahHeader extends StatelessWidget {
  const SurahHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AContainer(
        margin: const EdgeInsets.all(20),
        width: double.infinity,
        height: 170.h,
        borderRadius: BorderRadius.circular(5),
        decorationImage: const DecorationImage(
          opacity: 0.1,
          image: AssetImage('assets/images/mosque.jpg'),
          fit: BoxFit.cover,
        ),
        color: const Color(0xff409f83),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 98.h,
              left: 183.w,
              child: Image.asset(
                  width: 20.w, height: 20.h, 'assets/images/star.png'),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 23, right: 49),
                child: Image.asset('assets/images/star.png',
                    width: 6.w, height: 7.h),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 17),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Last Read', style: AppFonts.regular1),
                      SizedBox(height: 10.h),
                      Text(
                        'الفاتحة',
                        style:
                            AppFonts.headline3.copyWith(fontFamily: 'QCF_P001'),
                      ),
                      AppButton(
                          radius: BorderRadius.circular(20),
                          height: 31.h,
                          width: 115.w,
                          function: () {},
                          btnColor: AppColors.scaffoldColor,
                          txtColor: Colors.black,
                          text: 'continue')
                    ],
                  ),
                ),
                Image.asset(
                    width: 202.17.w,
                    height: 202.17.h,
                    'assets/images/moshaf.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
